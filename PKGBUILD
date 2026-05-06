# Maintainer: Zach Leslie <@zachfi>

pkgname=nodemanager-bin
_realname=nodemanager
pkgver=0.13.8
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
sha256sums_x86_64=('e964b2a29a76d997c6c79984f31de7cd7d24a4f651728a4372aab477532acc1a' 'e69b6d281236b00e143fa218b834ec446e8935f2f931d6137ba099fa2d855198')
sha256sums_aarch64=('39a6e611f2704851f7da68e4b4b7d7d0fedf94c1fe8f7dadf186a04977bf1332' 'ce0a1e3e9aa8c48389a86d713a264abfaf0fe4f30c70c21d321bd8e6984ac707')
sha256sums_armv7h=('075f5c01bc47af009d7604e42fbccc9a31badda46ea39dcb814d13dfad32b92d' '88778b570e69f4033d8726e7fc19086df5d75e7ec3d30b43230e3166cd7a75b5')

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
