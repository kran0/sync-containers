
# Popular user data sync clients in containers

This project aims to create simple, lightweight containers for various cloud 
storage systems. Like Dropbox, Google Drive and others.

Doing this I have started with Yandex disk, and it suits me so far. 
So i have trottled down a bit. Only Yandex disk is implemented so far.

## How to run containers

- [yandex-disk][link_yadisk_readme].

## Licenses and legal notes

*The software inside pre-built containers is not 100% free*:

- Source code for building the images [license](./LICENSE) is free (but not copyleft);
- System software inside container (bash, GNU-libc, etc.) must be free;
- [Yandex-Disk][link_yadisk_official]: [license][link_yadisk_license].

---
[link_yadisk_readme]:./yandex-disk/README.md
[link_yadisk_official]:https://yandex.ru/support/disk-desktop-linux/
[link_yadisk_license]:https://yandex.ru/legal/desktop_software_agreement/
