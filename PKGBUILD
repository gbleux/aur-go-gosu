# Maintainer: Gordon Bleux <gordon.bleux+aurgosu@gmail.com>
pkgname=go-gosu-bin
pkgver=1.3
pkgrel=2
pkgdesc="Simple Go-based setuid+setgid+setgroups+exec"
arch=('i686' 'x86_64')
url="https://github.com/tianon/gosu"
license=('GPL3')
makedepends=()
checkdepends=()
provides=('go-gosu')
noextract_i686=("gosu")
noextract_x86_64=("gosu")
source_i686=("gosu::https://github.com/tianon/gosu/releases/download/${pkgver}/gosu-i386")
source_x86_64=("gosu::https://github.com/tianon/gosu/releases/download/${pkgver}/gosu-amd64")
sha256sums_i686=('07a1cadd21b5e92f55cb4a237067e664817b4736e437c00a12e6cf47540269a5')
sha256sums_x86_64=('ad0a788fe9cf0fc039c3bd6113560f1b7443c0ccaef2b3f18eba6dfec15e1d0c')

package() {
    # no setuid bit, as gosu is usually invoked by root to drop
    # privileges. the other way around would be a major security issue
    install -Dm755 "gosu" "${pkgdir}/usr/bin/gosu"
}
