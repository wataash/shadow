#! /bin/sh

autoreconf -v -f --install || exit 1

./configure \
	CFLAGS="-O0 -ggdb3 -Wall" \
	--enable-man \
	--enable-maintainer-mode \
	--disable-shared \
	--without-libpam \
	--with-selinux \
	"$@"
