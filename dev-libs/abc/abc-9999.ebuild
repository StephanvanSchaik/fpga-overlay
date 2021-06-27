# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils git-r3 multilib cmake-utils

DESCRIPTION="ABC: System for Sequential Logic Synthesis"
HOMEPAGE="https://github.com/berkeley-abc/abc"
LICENSE=""
EGIT_REPO_URI="https://github.com/berkeley-abc/abc"

SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
BDEPEND="dev-util/cmake"

src_configure() {
	cmake-utils_src_configure
}

src_install() {
	cd $WORKDIR/abc-9999_build
	dobin abc
	dolib.so libabc.so
}
