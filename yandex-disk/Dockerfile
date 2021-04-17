ARG FEDORA_VERSION=35
FROM fedora:${FEDORA_VERSION} as prepare

COPY rootfs /

ARG FEDORA_VERSION=35
ARG YANDEX_DISK=yandex-disk-0.1.5.1039
ENV DEPS='glibc-minimal-langpack bash'

RUN dnf -y install\
 --installroot /target --releasever ${FEDORA_VERSION}\
 --setopt install_weak_deps=false\
 ${DEPS} ${YANDEX_DISK}

# remove unused depencies
RUN rm -rvf\
 /target/{boot,dev,etc,home,lib,sbin,media,mnt,opt,proc,root,run,srv,sys,tmp,var}\
 /target/usr/{games,include,lib,libexec,local,sbin,share,src,tmp}\
 /target/usr/lib64/{X11,audit,bpf,games,gconv,pm-utils}

FROM scratch
COPY --from=prepare /target /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["start"]
