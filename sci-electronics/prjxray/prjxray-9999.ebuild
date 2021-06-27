# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..10} )

inherit eutils git-r3 multilib cmake-utils distutils-r1

DESCRIPTION="Documenting the Xilinx 7-series bitstream format."
HOMEPAGE="https://github.com/SymbiFlow/prjxray"
LICENSE="ISC"
EGIT_REPO_URI="https://github.com/SymbiFlow/prjxray"

SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
	dev-cpp/abseil-cpp
	dev-cpp/yaml-cpp
"
RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
"

python_prepare_all() {
	cmake-utils_src_prepare
	distutils-r1_python_prepare_all
}

python_configure_all() {
	cmake-utils_src_configure
}

python_compile_all() {
	cmake-utils_src_compile
}

python_install_all() {
	cmake-utils_src_install
	distutils-r1_python_install_all
}
