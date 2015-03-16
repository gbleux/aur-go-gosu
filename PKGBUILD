# Maintainer: Gordon Bleux <gordon.bleux+aurgosu@gmail.com>
pkgname=go-gosu-bin
pkgver=1.2
pkgrel=1
pkgdesc="Simple Go-based setuid+setgid+setgroups+exec"
arch=('i686' 'x86_64')
url="https://github.com/tianon/gosu"
_disturl="https://github.com/tianon/gosu/releases/download"
license=('GPL3')
makedepends=()
checkdepends=()
provides=('go-gosu')

if [ "$CARCH" == "x86_64" ]; then
    _pkgartifact=gosu-amd64
    noextract=("${_pkgartifact}")
    sha256sums=('b72f033f33606ca7ef061510c42c9b922ffd5ee31796bd965185207be3aa01d7')
else
    _pkgartifact=gosu-i386
    noextract=("${_pkgartifact}")
    sha256sums=('787bc35fbe7f0a09813e1b9bb29f5e2a2c4e8da996002bce65137e1bb5f6b9d9')
fi

source=("${_disturl}/${pkgver}/${_pkgartifact}")
validpgpkeys=('4096RB42F6819007F00F88E364FD4036A9C25BF357DD4')

package() {
    # install as root with setuid bit set
    install -D -o 0 -g 0 -m 4755 "${_pkgartifact}" "${pkgdir}/usr/bin/gosu"
}
