# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils git-r3 multilib cmake-utils

DESCRIPTION="Documenting the Xilinx 7-series bitstream format."
HOMEPAGE="https://github.com/SymbiFlow/prjxray"
LICENSE="ISC"
EGIT_REPO_URI="https://github.com/SymbiFlow/prjxray"

SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-lang/python"

src_configure() {
	cmake-utils_src_configure
}
