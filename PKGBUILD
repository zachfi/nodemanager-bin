# Maintainer: Zach Leslie <@zachfi>

pkgname=nodemanager-bin
_realname=nodemanager
pkgver=0.7.12
pkgrel=1
pkgdesc='A Kubernetes controller to manage nodes'
url="https://github.com/zachfi/$_realname"
arch=(aarch64 armv7h x86_64)
license=('APACHE')
source_x86_64=("https://github.com/zachfi/${_realname}/releases/download/v${pkgver}/${_realname}_${pkgver}_linux_amd64.tar.gz"
               "https://github.com/zachfi/${_realname}/releases/download/v${pkgver}/${_realname}-agent_${pkgver}_linux_amd64.tar.gz")
source_aarch64=("https://github.com/zachfi/${_realname}/releases/download/v${pkgver}/${_realname}_${pkgver}_linux_arm64.tar.gz"
                "https://github.com/zachfi/${_realname}/releases/download/v${pkgver}/${_realname}-agent_${pkgver}_linux_arm64.tar.gz")
source_armv7h=("https://github.com/zachfi/${_realname}/releases/download/v${pkgver}/${_realname}_${pkgver}_linux_armv7.tar.gz"
               "https://github.com/zachfi/${_realname}/releases/download/v${pkgver}/${_realname}-agent_${pkgver}_linux_armv7.tar.gz")
sha256sums_aarch64=('0f2df1f45c2195d2aa7ed9c90fa0885827360d04c68a546a097a92a44d54d5a8' '11bb362e165da87a4f15bbbc8f262ef91b21a66d0c4840f35c959e157a2e43af')
sha256sums_armv7h=('5d43eb815567c937385de15b4632056d42a25e73675471d53371a5b43ad3dee3' 'af8aca7bb373203fb8761616d04a29e4972e3e4e09f8b7294bef4ca4cf5a6aed')
sha256sums_x86_64=('758312f0781de2b0dd2e5b42bc18ce9e462a1fdae2de18724579ccff98c2c8c8' '885e8827730c1af79ea93fde36bc9a18cb5987b1f0db5e968205054f8b56c901')

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
  install -Dm755 "${_realname}-agent" "${pkgdir}/usr/bin/${_realname}-agent"
  install -Dm644 ${startdir}/nodemanager.service "${pkgdir}/usr/lib/systemd/system/nodemanager.service"
}
