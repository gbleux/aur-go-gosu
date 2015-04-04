# VERSION           0.0.1
# DOCKER-VERSION    1.5.0

# This image serves as an example of how gosu can be installed using the
# Archlinux build tools. In this case the image is built using the local
# sources instead of the version submitted to the AUR.
FROM base/devel:minimal
MAINTAINER Gordon Bleux <gordon.bleux+aurgosu@gmail.com> (@gbleux)

RUN useradd --user-group worker
WORKDIR /usr/local/src/gosu

COPY PKGBUILD /usr/local/src/gosu/
RUN chown -R worker:worker /usr/local/src/gosu/
USER worker
RUN makepkg -sfc --noconfirm --needed

USER root
ENV AUR_GOSU_VERSION=1.3-1
RUN pacman \
        --noprogressbar \
        --noconfirm \
        -U go-gosu-bin-${AUR_GOSU_VERSION}-x86_64.pkg.tar.xz \
    && rm /var/cache/pacman/pkg/*

# `whoami` serves as an example here and should be replaced.
CMD ["gosu", "worker", "whoami"]
