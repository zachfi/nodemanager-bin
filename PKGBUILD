# Maintainer: Zach Leslie <@zachfi>

pkgname=nodemanager-bin
_realname=nodemanager
pkgver=0.4.3
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
sha256sums_aarch64=('e9284179e42e8ff9733efc4013cdb4eb8dca6110b1295b34494948ad341999c4')
sha256sums_armv7h=('13a3a7cb3e5cb90c9984218aedb50851eda1b0414daadfb82fdadb12c0727732')
sha256sums_x86_64=('20c5d0c162dc630f4435c9353a3265bc7748f0f41a82ebabbca623ada20bbcf1')

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
