ARG FEDORA_VERSION=39
FROM fedora:${FEDORA_VERSION} as prepare

COPY yandex.repo /etc/yum.repos.d

ARG FEDORA_VERSION=39
ARG YANDEX_DISK=yandex-disk

RUN dnf -y install --releasever ${FEDORA_VERSION}\
 --installroot /target\
 --setopt install_weak_deps=false\
 ${YANDEX_DISK}

# remove unused depencies
RUN rm -rvf\
 /target/{boot,dev,etc,home,lib,sbin,media,mnt,opt,proc,root,run,srv,sys,tmp,var}\
 /target/usr/{games,include,lib,libexec,local,sbin,share,src,tmp}\
 /target/usr/lib64/{X11,audit,bpf,games,gconv,pm-utils}

FROM scratch
COPY --from=prepare /target /

ENTRYPOINT [ "/usr/bin/yandex-disk" ]
CMD [ "--help" ]
