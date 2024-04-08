# Maintainer: Zach Leslie <@zachfi>

pkgname=nodemanager-bin
_realname=nodemanager
pkgver=0.1.40
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
sha256sums_aarch64=('29450419d9e3ebbced3ef80f1082efa72dcc00f49986f0e8c2fe060ab6feb367')
sha256sums_armv7h=('c6ecf366d34e603feae6fa38b44a96ae0ab19bc03ce5a3955b57f1e9be356739')
sha256sums_x86_64=('93c5a4bb782e94d76e3f25cbec18bb5658134e681c775e6c0792a0dc952c3a40')

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
	install -Dm644 contrib/arch/nodemanager.service "${pkgdir}/usr/lib/systemd/system/nodemanager.service"
}
