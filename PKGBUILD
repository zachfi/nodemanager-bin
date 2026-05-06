# Maintainer: Zach Leslie <@zachfi>

pkgname=nodemanager-bin
_realname=nodemanager
pkgver=0.13.12
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
sha256sums_x86_64=('3ae02dabccdb9870dd615c08374b66382d6bd295bf0813068ad499b74d182a20' '9f8ecb1887130dc4102f4fc1a309eba1539ebcb738179117c1656c632630ec99')
sha256sums_aarch64=('85d8a715ceeeaa13cfa1ed13f8db66ee3f62ed32854e0785cb76ddd492b273dc' 'e70a7c619e91d5477d442dc6bfc159a0e9e7cb47a893b943ea64e19a8cc3f959')
sha256sums_armv7h=('d0ede862f9e7cd844ee9f9e368187814e569921795c79a3ae3dbb9f734c71c11' 'c7f0beed58a17f888aea9fd01ac4bb6e8d2da711c055d771d21fbb7fa21bcf26')

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
