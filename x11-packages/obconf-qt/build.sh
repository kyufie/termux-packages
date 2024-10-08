TERMUX_PKG_HOMEPAGE=https://lxqt.github.io
TERMUX_PKG_DESCRIPTION="OpenBox window manager configuration tool"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.16.4"
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL="https://github.com/lxqt/obconf-qt/releases/download/${TERMUX_PKG_VERSION}/obconf-qt-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=b37d94ff5e3ae527f83e26e970a736775f27749b0946bf6b6cf4c3ac7047a997
TERMUX_PKG_REPLACES="obconf"
TERMUX_PKG_BREAKS="obconf"
TERMUX_PKG_DEPENDS="libc++, qt5-qtbase, qt5-qtx11extras, glib, openbox, liblxqt, hicolor-icon-theme"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools-qt5, qt5-qtbase-cross-tools, qt5-qttools-cross-tools"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_post_make_install() {
	cd "$TERMUX_PREFIX"/bin
	ln -s obconf-qt obconf
}
