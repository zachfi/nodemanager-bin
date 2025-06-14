.PHONY: all clean drone update

archs = x86_64 armv7h aarch64

VERSION=$(shell ./tools/version-tag.sh | cut -d, -f 1 | sed 's/^v//')

readonlyOrigin = https://github.com/zachfi/nodemanager

clean:
	@rm -f *pkg.tar.zst

all:
	@for arch in $(archs); do CARCH="$$arch" makepkg -c; done

check:
	@makepkg -g

build-%: check
	@CARCH=$* makepkg -c

setup:
	@git remote -v | grep project || git rem add project $(readonlyOrigin)

update: setup
	@sed 's/{{ version }}/$(VERSION)/' PKGBUILD.template > PKGBUILD
	@updpkgsums

drone:
	@drone jsonnet --format
	@drone lint
