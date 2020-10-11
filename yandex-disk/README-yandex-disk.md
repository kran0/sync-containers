Container with Yandex-Disk.

The Licenses and legal notes in [parent README.md](../README.md). 

# How to run?

- Save locally the [compose.yaml](../compose-yandex-disk.yaml) service definition file;
- Edit compose.yaml. Change at least env: ```PASSWORD``` and ```USERNAME```;
  - Defaults are:
  ```bash
    AUTH="/tmp/yandex-disk.passwd"
    DIR="/opt/share"
```
  - Change ```DIR``` env variable and the ```volumes``` list to sync with other local location;
  - Change ```AUTH``` env variable and add entry to the ```volumes``` list to place auth encrypted file to certain local location;
- Start/stop service:
  ```bash
    docker-compose -f compose-yandex-disk.yaml up -d
    dockr-compose -f compose-yandex-disk.yaml down
```

# Docker tags

[![Automated][badge_docker_automated]][link_docker_tags]
[![Build][badge_docker_build]][link_docker_builds]

| Repository:Tag | Description |
|:--|---|
| kran0/yandex-disk:latest | latest stable release with the latest Dockerfile |
| kran0/yandex-disk:{tag}  | tagged stable release [![Semver][badge_docker_semver]][link_docker_tags] |

---
[badge_docker_automated]:https://img.shields.io/docker/automated/kran0/yandex-disk?style=for-the-badge&cacheSeconds=3600
[badge_docker_build]:https://img.shields.io/docker/build/kran0/yandex-disk?style=for-the-badge&cacheSeconds=3600
[badge_docker_semver]:https://img.shields.io/docker/v/kran0/yandex-disk?sort=semver&style=social&cacheSeconds=3600
[link_docker_tags]:https://hub.docker.com/r/kran0/yandex-disk/tags?page=1&ordering=last_updated
[link_docker_builds]:https://hub.docker.com/r/kran0/yandex-disk/builds
