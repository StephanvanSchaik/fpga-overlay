# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 cmake

DESCRIPTION="Documenting the Lattice ECP5 bit-stream format."
HOMEPAGE="https://prjtrellis.readthedocs.io/en/latest/"
LICENSE="ISC"
EGIT_REPO_URI="https://github.com/YosysHQ/prjtrellis"
S=$WORKDIR/prjtrellis-9999/libtrellis

SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-libs/boost"

src_configure() {
	cmake_src_configure
}
