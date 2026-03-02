# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 cmake

DESCRIPTION="nextptr - portable FPGA place and route tool"
HOMEPAGE="https://github.com/YosysHQ/nextpnr"
LICENSE="ISC"
EGIT_REPO_URI="https://github.com/YosysHQ/nextpnr"

SLOT="0"
KEYWORDS=""
IUSE="ice40 ecp5 gowin himbaechel qt5"

DEPEND="ice40? ( sci-electronics/icestorm sci-electronics/yosys )
		ecp5? ( sci-electronics/prjtrellis sci-electronics/yosys )
		gowin? ( sci-electronics/apycula sci-electronics/yosys )
		himbaechel? ( sci-electronics/apycula sci-electronics/yosys )
		qt5? ( dev-qt/qtcore:5 )
		dev-libs/boost
		dev-cpp/eigen
		dev-python/pybind11"

src_configure() {
	local mycmakeargs=(
		"-DARCH=$(usex ice40 "ice40;" "")$(usex ecp5 "ecp5;" "")$(usex himbaechel "himbaechel;" "")"
		$(usex himbaechel -DHIMBAECHEL_UARCH="$(usex gowin "gowin;" "")" "") # TODO: xilinx requires project xray
		$(usex qt5 -DBUILD_GUI="ON" "OFF")
	)

	cmake_src_configure
}
