# Media management system Docker

## Table of Contents

- [Applications](#applications)
- [Installation](#installation)

## Applications

### Media

Applications for using media.

| Application | Description | Default URL | Default port |
| ----------- | ----------- | ----------- | ------------ |
| [Plex](https://www.plex.tv/) | Media server | http://plex.media.localhost | 32400 |

### Management

Applications for managing media.

| Application | Description | Default URL | Default port |
| ----------- | ----------- | ----------- | ------------ |
| [Radarr](https://radarr.video/) | Movie management | http://radarr.media.localhost | 7878 |
| [Sonarr](https://sonarr.tv/) | TV management | http://sonarr.media.localhost | 8989 |
| [Prowlarr](https://prowlarr.com/) | Indexer management | http://prowlarr.media.localhost | 9696 |

### Tools

| Application | Description | Default URL | Default port |
| ----------- | ----------- | ----------- | ------------ |
| [Home page](https://gethomepage.dev/v0.8.3/) | Home page | http://media.localhost | 6900 |
| [Transmission](https://transmissionbt.com/) | Torrent client | http://transmission.media.localhost | 9091 |
| [Firefox](https://docs.linuxserver.io/images/docker-firefox/) | Browser | http://browser.media.localhost | 5800 |

### Others

| Application | Description | Default URL | Default port |
| ----------- | ----------- | ----------- | ------------ |
| [Traefik](https://traefik.io/traefik/) | Reverse proxy |  | 80 |
| Traefik dashboard | Reverse proxy dashboard | http://traefik.media.localhost | 8080 |

## Installation

### Requirements

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Installation

1. Copy the `.env.template` file to `.env`

```bash
cp .env.template .env
```

2. Edit the `.env` file

```bash
nano .env
```

> See [configuration](#configuration) section for more details

3. Start the containers

```bash
make
```

4. Open the browser and go to the default URL (http://media.localhost)

### Configuration

#### .env file

The `.env` file contains the environment variables for the containers.

| Variable | Description | Default value |
| -------- | ----------- | ------------- |
| `USER_ID` | User ID | `1000` |
| `GROUP_ID` | Group ID | `1000` |
| `TZ` | Timezone | `Europe/Paris` |
| `WIREGUARD_PRIVATE_KEY`* | Wireguard private key | `""` |
| `WIREGUARD_PUBLIC_KEY`* | Wireguard public key | `""` |
| `WIREGUARD_ENDPOINT`* | Wireguard endpoint | `""` |
| `LIBRARY_MOVIES_PATH` | Path to the directory where movies will be stored | `"~/Movies/Plex/Movies"` |
| `LIBRARY_TV_PATH` | Path to the directory where TV shows will be stored | `"~/Movies/Plex/TV"` |
| `DOWNLOADS_PATH` | Path to the directory where downloads will be stored | `"~/Movies/Download"` |
| `DOMAIN` | Domain name to access the applications | `localhost` |
| `HOME_SUBDOMAIN` | Subdomain for the home page | `media` |
| `PLEX_SUBDOMAIN` | Subdomain for Plex | `plex.media` |
| `RADARR_SUBDOMAIN` | Subdomain for Radarr | `radarr.media` |
| `SONARR_SUBDOMAIN` | Subdomain for Sonarr | `sonarr.media` |
| `PROWLARR_SUBDOMAIN` | Subdomain for Prowlarr | `prowlarr.media` |
| `TRANSMISSION_SUBDOMAIN` | Subdomain for Transmission | `download.media` |
| `FIREFOX_SUBDOMAIN` | Subdomain for Firefox | `browser.media` |

> `*` Required variables