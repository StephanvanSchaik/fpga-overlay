# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit git-r3 cmake distutils-r1

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
	cmake_src_prepare
	distutils-r1_python_prepare_all
}

python_configure_all() {
	cmake_src_configure
}

python_compile_all() {
	cmake_src_compile
}

python_install_all() {
	cmake_src_install
	distutils-r1_python_install_all
}
