# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils git-r3 multilib eutils

DESCRIPTION="Lattice iCE40 FPGAs Bitstream Documentation (Reverse Engineered)"
HOMEPAGE="http://www.clifford.at/icestorm/"
LICENSE="ISC"
EGIT_REPO_URI="https://github.com/YosysHQ/icestorm"

SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

DEPEND=">=dev-lang/python-3
		dev-embedded/libftdi
		virtual/pkgconfig
		${RDEPEND}"

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" install
}
