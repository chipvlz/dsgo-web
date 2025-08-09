# dsgo-web

Flutter web PWA for managing Synology Download Station.

## Quick start

1. Edit `docker-compose.yml` and set `DSM_HOST` to the address of your DSM server.
2. Build and run the container:
   ```bash
   docker-compose up -d --build
   ```
3. Open `http://<NAS_IP>:6742` in your browser.

This container clones the original [DS Go](https://github.com/tingtingths/dsgo) repository, applies the overrides in `override/lib`, builds the Flutter web app and serves it with `serve`.

The `DSM_HOST` environment variable should point to your DSM server, for example `http://192.168.1.2:5000`.

