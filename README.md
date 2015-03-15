# gosu AUR package

This project aims to provide an [AUR](https://aur.archlinux.org/) package for 
[gosu](https://github.com/tianon/gosu).

**Installing this package outside of a chrooted/jailed/dockerized environment
is not recommended, as gosu has no access restriction policy. It can be used
by anyone without restrictions or the requirement of authentication.**

`gosu` is usually installed inside [Docker](https://registry.hub.docker.com/)
images as privilege elevation replacement for `sudo` and `su`. Installing `gosu`
as AUR packages reduces the boilerplate of Dockerfiles, as downloading,
verifying and installing can be done with a few instructions.
For this reason currently only a
[PKGBUILD](https://wiki.archlinux.org/index.php/PKGBUILD) which packages the
binary release of _gosu_ is provided. A source based version is possible,
although currently not planned.

## Usage

The following Dockerfile shows a minimalisic example of the typical usecase
in which gosu is needed.

> FROM base/devel:minimal
> 
> RUN useradd --user-group worker
> 
> RUN yaourt -S go-gosu-bin
> CMD ["gosu", "worker", "whoami"]

It is also possible to install the gosu package directly from the upstream
repository instead of the AUR.

> FROM base/devel:minimal
> 
> RUN useradd --user-group worker
> 
> USER worker
> WORKDIR /usr/local/src/gosu
> ADD https://github.com/gbleux/aur-gosu/archive/master.zip /usr/local/src/gosu/
> RUN /usr/bin/makepkg -sfc --noconfirm --needed
> 
> CMD ["gosu", "worker", "whoami"]
