# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils git-r3 multilib cmake-utils

DESCRIPTION="EZGL provides a thin wrapper around GTK and drawing functionality."
HOMEPAGE="https://github.com/mariobadr/ezgl"
LICENSE="Apache-2.0"
EGIT_REPO_URI="https://github.com/mariobadr/ezgl"

SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
BDEPEND="dev-util/cmake"

src_configure() {
	cmake-utils_src_configure
}

src_install() {
	cd $WORKDIR/ezgl-9999_build
	dolib.so libezgl.so
}
