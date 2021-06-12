# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils git-r3 multilib cmake-utils

DESCRIPTION="Documenting the Lattice ECP5 bit-stream format."
HOMEPAGE="https://github.com/YosysHQ/prjtrellis"
LICENSE="ISC"
EGIT_REPO_URI="https://github.com/YosysHQ/prjtrellis"
S=$WORKDIR/prjtrellis-9999/libtrellis

SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-libs/boost"

src_configure() {
	cmake-utils_src_configure
}
