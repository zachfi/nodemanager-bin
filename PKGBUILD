# Maintainer: Zach Leslie <@zachfi>

pkgname=nodemanager-bin
_realname=nodemanager
pkgver=0.2.0
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
sha256sums_aarch64=('1bbd8248426cccb192d532289dcc0e63f7f3045720cc7953201b376f15beeb0e')
sha256sums_armv7h=('a327c7984e8e6ed69b7643bdd63f4862f10ec687f3ed44341d20890c0b8f48bc')
sha256sums_x86_64=('de61d7a2175c4884f74dfcbe1e75909ccf4ffb85958d0068047b278dec9455b8')

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
