# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Universal utility for programming FPGAs"
HOMEPAGE="https://github.com/trabucayre/openFPGALoader"
LICENSE="AGPL-3+"

if [[ ${PV} = 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/trabucayre/openFPGALoader"
else
	SRC_URI="https://github.com/trabucayre/openFPGALoader/archive/refs/tags/v${PV}.tar.gz -> openfpgaloader${PV}.tar.gz"
	KEYWORDS="~amd64"
	S=$WORKDIR/openFPGALoader-${PV}
fi

SLOT="0"
IUSE=""

DEPEND="dev-embedded/libftdi
		virtual/libudev"

src_configure() {
	cmake_src_configure
}
