// GeoAttend Service Worker v1.0
const CACHE_NAME = 'geoattend-v1';
const ASSETS = [
    '/',
    '/index.html',
    '/admin123.html',
    'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css'
];

// ── Install: cache core assets ──────────────────────────────
self.addEventListener('install', event => {
    event.waitUntil(
        caches.open(CACHE_NAME).then(cache => cache.addAll(ASSETS)).catch(() => {})
    );
    self.skipWaiting();
});

// ── Activate: clear old caches ──────────────────────────────
self.addEventListener('activate', event => {
    event.waitUntil(
        caches.keys().then(keys =>
            Promise.all(keys.filter(k => k !== CACHE_NAME).map(k => caches.delete(k)))
        )
    );
    self.clients.claim();
});

// ── Fetch: serve from cache then network ────────────────────
self.addEventListener('fetch', event => {
    // Skip non-GET and API requests
    if (event.request.method !== 'GET') return;
    if (event.request.url.includes('/api/')) return;

    event.respondWith(
        caches.match(event.request).then(cached => {
            const network = fetch(event.request).then(response => {
                if (response && response.status === 200 && response.type === 'basic') {
                    const clone = response.clone();
                    caches.open(CACHE_NAME).then(cache => cache.put(event.request, clone));
                }
                return response;
            }).catch(() => cached);
            return cached || network;
        })
    );
});

// ── Push: show notification when received ───────────────────
self.addEventListener('push', event => {
    let data = {};
    try {
        data = event.data ? event.data.json() : {};
    } catch (e) {
        data = { title: 'GeoAttend', body: event.data ? event.data.text() : 'Attendance session started!' };
    }

    const title = data.title || 'GeoAttend Attendance';
    const options = {
        body: data.body || 'A new attendance session has started.',
        icon: data.icon || '/icon-192.png',
        badge: '/icon-96.png',
        tag: data.tag || 'geoattend-session',
        renotify: true,
        requireInteraction: true,
        vibrate: [200, 100, 200],
        data: {
            url: data.url || '/index.html',
            sessionId: data.sessionId || null
        },
        actions: [
            { action: 'open', title: '✅ Open App' },
            { action: 'dismiss', title: '❌ Dismiss' }
        ]
    };

    event.waitUntil(self.registration.showNotification(title, options));
});

// ── Notification click: open/focus the app ──────────────────
self.addEventListener('notificationclick', event => {
    event.notification.close();

    if (event.action === 'dismiss') return;

    const targetUrl = event.notification.data?.url || '/index.html';

    event.waitUntil(
        clients.matchAll({ type: 'window', includeUncontrolled: true }).then(windowClients => {
            // Focus existing window if open
            for (const client of windowClients) {
                if (client.url.includes('index.html') && 'focus' in client) {
                    client.focus();
                    client.postMessage({ type: 'SESSION_NOTIFICATION_CLICKED' });
                    return;
                }
            }
            // Otherwise open a new window
            if (clients.openWindow) return clients.openWindow(targetUrl);
        })
    );
});