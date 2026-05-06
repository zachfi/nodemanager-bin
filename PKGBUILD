# Maintainer: Zach Leslie <@zachfi>

pkgname=nodemanager-bin
_realname=nodemanager
pkgver=0.13.6
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
sha256sums_x86_64=('9e68ec75cd6745252b87219be1c31035d6444dd127aa5ed4b5de75f65eaaf41a' '7762b5bd954c9841b116a9721d661d969e2d0089b72dee52d02a8d2a8530cbe5')
sha256sums_aarch64=('74cc8a518f63f9df2816b86bba2f256c32973a98c99f95e88691b0f74e1c02c1' '00cd4cdda611e80f72bf1a3d2aab6f93b8d5246b9e5dabf39c2ec0f2722aefe3')
sha256sums_armv7h=('c0f356314736c9399e3d026687287adf38b4030e5041f55d32b7ea53005cdb93' '0b6bc575677932a657d0a7af5f4feb63467997aec9aa89985a5a920e12261363')

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
