# Maintainer: Gordon Bleux <gordon.bleux+aurgosu@gmail.com>
pkgname=go-gosu-bin
pkgver=1.2
pkgrel=1
pkgdesc="Simple Go-based setuid+setgid+setgroups+exec"
arch=('i686' 'x86_64')
url="https://github.com/tianon/gosu"
license=('GPL3')
makedepends=()
checkdepends=()
provides=('go-gosu')

if [ "$CARCH" == "x86_64" ]; then
    _pkgartifact=gosu-amd64    
else
    _pkgartifact=gosu-i386
fi

noextract_i686=("${_pkgartifact}")
noextract_x86_64=("${_pkgartifact}")
source_i686=("https://github.com/tianon/gosu/releases/download/${pkgver}/${_pkgartifact}")
source_x86_64=("https://github.com/tianon/gosu/releases/download/${pkgver}/${_pkgartifact}")
sha256sums_i686=('787bc35fbe7f0a09813e1b9bb29f5e2a2c4e8da996002bce65137e1bb5f6b9d9')
sha256sums_x86_64=('b72f033f33606ca7ef061510c42c9b922ffd5ee31796bd965185207be3aa01d7')

#source_i686=("https://github.com/tianon/gosu/releases/download/${pkgver}/${_pkgartifact}"{,.asc})
#source_x86_64=("https://github.com/tianon/gosu/releases/download/${pkgver}/${_pkgartifact}"{,.asc})
#sha256sums_i686=('787bc35fbe7f0a09813e1b9bb29f5e2a2c4e8da996002bce65137e1bb5f6b9d9' 'SKIP')
#sha256sums_x86_64=('b72f033f33606ca7ef061510c42c9b922ffd5ee31796bd965185207be3aa01d7' 'SKIP')
#validpgpkeys=('4096RB42F6819007F00F88E364FD4036A9C25BF357DD4')

package() {
    # install as root with setuid bit set
    install -Dm4755 "${_pkgartifact}" "${pkgdir}/usr/bin/gosu"
}
