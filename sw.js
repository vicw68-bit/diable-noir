const CACHE = "diable-noir-v9";

self.addEventListener("install", (event) => {
  if (self.location.protocol !== "https:") return;
  event.waitUntil(
    caches.open(CACHE).then((cache) =>
      cache.addAll(["./", "./index.html", "./manifest.webmanifest"])
    )
  );
  self.skipWaiting();
});

self.addEventListener("activate", (event) => {
  event.waitUntil(
    caches.keys().then((keys) =>
      Promise.all(keys.filter((k) => k !== CACHE).map((k) => caches.delete(k)))
    )
  );
  self.clients.claim();
});

self.addEventListener("fetch", (event) => {
  if (event.request.method !== "GET" || self.location.protocol !== "https:") return;
  event.respondWith(
    caches.match(event.request).then((cached) => cached || fetch(event.request))
  );
});
