FROM caddy:2.10-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/mholt/caddy-l4
FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy