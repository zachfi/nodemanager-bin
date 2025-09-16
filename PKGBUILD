# Maintainer: Zach Leslie <@zachfi>

pkgname=nodemanager-bin
_realname=nodemanager
pkgver=0.5.4
pkgrel=1
pkgdesc='A Kubernetes controller to manage nodes'
url="https://github.com/zachfi/$_realname"
arch=(aarch64 armv7h x86_64)
license=('APACHE')
#source=("${_realname}-${pkgver}.tar.gz::https://github.com/zachfi/${_realname}/archive/refs/tags/v${pkgver}.tar.gz")
source_x86_64=("https://github.com/zachfi/${_realname}/releases/download/v${pkgver}/${_realname}_${pkgver}_linux_amd64.tar.gz")
source_aarch64=("https://github.com/zachfi/${_realname}/releases/download/v${pkgver}/${_realname}_${pkgver}_linux_arm64.tar.gz")
source_armv7h=("https://github.com/zachfi/${_realname}/releases/download/v${pkgver}/${_realname}_${pkgver}_linux_armv7.tar.gz")
#sha256sums=('fa2edae90c7999a6f667bba26a6c63c7165647f77c02c83860237c6d08ee4bbd')
sha256sums_aarch64=('e52e96eeae7ad0e2a824066bb0762087bc2c632dd6d28a999e3a96603fac5cff')
sha256sums_armv7h=('a44fcbeb762ce65b810ddee8f72337ba2904bea0a7c6b375e48f23800863d354')
sha256sums_x86_64=('a4debca0e1f400d01486c533dd76370a9a6668cb21282497fe79ebc6c8d6a654')

package() {
  case "$CARCH" in
  arm64)
    _pkgarch="arm64"
    ;;
  armv*)
    _pkgarch="arm"
    ;;
  x86_64)
    _pkgarch="amd64"
    ;;
  esac

  install -Dm755 "${_realname}" "${pkgdir}/usr/bin/${_realname}"
  install -Dm644 ${startdir}/nodemanager.service "${pkgdir}/usr/lib/systemd/system/nodemanager.service"
}
