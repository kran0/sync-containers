Container with Yandex-Disk

The Licenses and legal notes in [parent README.md](https://github.com/kran0/sync-containers/blob/main/README.md)

# How to run?

- Save locally the [compose.yaml](https://raw.githubusercontent.com/kran0/sync-containers/main/compose-yandex-disk.yaml) service definition file;

| Task             | How to do  |
|:-----------------|:-----------|
| Create auth info | `docker-compose -f compose-yandex-disk.yaml run --rm yandex-disk token` |
| Edit .env        | Set relative or absolute `YANDEX_SHARE` path |
| Stop service     | `docker-compose -f compose-yandex-disk.yaml down` |
| Start service    | `docker-compose -f compose-yandex-disk.yaml up -d --force-recreate` |

# Images tags

| Repository:Tag | Description |
|:--|---|
| kran0/yandex-disk:latest    | release with the latest Dockerfile on [Docker hub][link_docker_tags] |
| kran0/yandex-disk:{version} | release [![Semver][badge_docker_semver]][link_docker_tags] |

---
[badge_docker_semver]:https://img.shields.io/docker/v/kran0/yandex-disk?sort=semver&style=social&cacheSeconds=3600
[link_docker_tags]:https://hub.docker.com/r/kran0/yandex-disk/tags?page=1&ordering=last_updated
