# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils git-r3 multilib cmake-utils

DESCRIPTION="Verilog to Routing -- Open Source CAD Flow for FPGA Research"
HOMEPAGE="https://github.com/SymbiFlow/vtr-verilog-to-routing"
LICENSE="MIT"
EGIT_REPO_URI="https://github.com/SymbiFlow/vtr-verilog-to-routing"

SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
	dev-libs/abc
	dev-libs/ezgl
	dev-libs/capnproto
"
BDEPEND="dev-util/cmake"

PATCHES=(
	"${FILESDIR}/01-fix-capnproto.patch"
)

src_configure() {
	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
	cd $WORKDIR/vtr-9999_build/utils/fasm
	dolib.so libfasm.so
}
