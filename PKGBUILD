# Maintainer: Zach Leslie <@zachfi>

pkgname=nodemanager-bin
_realname=nodemanager
pkgver=0.7.3
pkgrel=2
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
sha256sums_aarch64=('2528a945ec8f75c060b15041f6f6140b9ad4e3d1389760b47d65ba2e655b0fba' 'b73d1a48fa9c7d8364c13c61d0eb66c67140d46bf3fceb2a2a1eb4df3ac09338')
sha256sums_armv7h=('7a3884645a38d74710bf38ff1c84374a63b9d328a7149031b7dbb0dc9e3d01d8' '41632bd395d2da31d5136eb71921c27f3e376e38999eb7fefb794fa198e2b2be')
sha256sums_x86_64=('8cbb508e906127e352cdec8a7708dc63049b14a8c72a2e60690f22e66865405d' 'c872130724e8b83f6b76c2de59d7839e8e2c7f7445f938d97a05bec00aa50f6c')

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
