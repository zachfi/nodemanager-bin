.PHONY: all clean drone

archs = x86_64 armv7h aarch64

clean:
	@rm -f *pkg.tar.zst

all:
	@for arch in $(archs); do CARCH="$$arch" makepkg -c; done

check:
	@makepkg -g

build-%: check
	@CARCH=$* makepkg -c


drone:
	@drone jsonnet --format
	@drone lint
