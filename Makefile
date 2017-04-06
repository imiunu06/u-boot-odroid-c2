TAG=2017.03

all: prepare build fip_create sign

prepare:
	test -d denx || git clone -v \
	http://git.denx.de/u-boot.git denx
	cd denx && git fetch
	gpg --list-keys 87F9F635D31D7652 || \
	gpg --keyserver keys.gnupg.net --recv-key 87F9F635D31D7652
	test -d hardkernel || git clone -v \
	https://github.com/hardkernel/u-boot.git hardkernel
	cd hardkernel && git fetch
	test -d meson-tools || git clone -v \
	https://github.com/afaerber/meson-tools.git meson-tools
	cd meson-tools && git fetch

build:
	cd denx && git verify-tag v$(TAG) 2>&1 | \
	grep 'E872 DB40 9C1A 687E FBE8  6336 87F9 F635 D31D 7652'
	cd denx && git reset --hard
	cd denx && git checkout v$(TAG)
	cd denx && ( git branch -D build || true )
	cd denx && git checkout -b build
	test ! -f patch/patch-$(TAG) || ( cd denx && ../patch/patch-$(TAG) )
	cd denx && make distclean
	cp config/config-$(TAG) denx/.config
	cd denx && make oldconfig
	cd denx && ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make -j6

fip_create:
	cd hardkernel && git reset --hard
	cd hardkernel && git checkout 205c7b3259559283161703a1a200b787c2c445a5
	cd hardkernel && ( git branch -D build || true )
	cd hardkernel && git checkout -b build
	cd hardkernel/tools/fip_create && make
	cp hardkernel/tools/fip_create/fip_create hardkernel/fip
	cp denx/u-boot.bin hardkernel/fip/gxb/bl33.bin
	cd hardkernel/fip/gxb && ../fip_create \
	  --bl30 bl30.bin --bl301 bl301.bin \
	  --bl31 bl31.bin --bl33 bl33.bin fip.bin
	cd hardkernel/fip/gxb && cat bl2.package fip.bin > boot_new.bin

sign:
	cd meson-tools && make
	meson-tools/amlbootsig hardkernel/fip/gxb/boot_new.bin u-boot.img
