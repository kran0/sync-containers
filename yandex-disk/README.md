Container with Yandex-Disk.

The Licenses and legal notes in [parent README.md](https://github.com/kran0/sync-containers/blob/main/README.md).

# How to run?

- Save locally the [compose.yaml](https://raw.githubusercontent.com/kran0/sync-containers/main/compose-yandex-disk.yaml) service definition file;
- Read run instructions in compose.yaml:
  - Do the steps:
    - Build the container (optional)
    - Create auth info volume
    - Edit .env and chill down SElinux
- Start/stop service:
  ```bash
     ./compose-yandex-disk.yaml down
     ./compose-yandex-disk.yaml up -d --force-recreate
  ```

# Docker tags

[![Automated][badge_docker_automated]][link_docker_tags]
[![Build][badge_docker_build]][link_docker_builds]

| Repository:Tag | Description |
|:--|---|
| kran0/yandex-disk:latest      | latest stable release with the latest Dockerfile |
| kran0/yandex-disk:{sourceref} | tagged stable release |

---
[badge_docker_automated]:https://img.shields.io/docker/cloud/automated/kran0/yandex-disk?style=for-the-badge&cacheSeconds=3600
[badge_docker_build]:https://img.shields.io/docker/cloud/build/kran0/yandex-disk?style=for-the-badge&cacheSeconds=3600
[link_docker_tags]:https://hub.docker.com/r/kran0/yandex-disk/tags?page=1&ordering=last_updated
[link_docker_builds]:https://hub.docker.com/r/kran0/yandex-disk/builds
