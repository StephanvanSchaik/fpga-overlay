# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_USE_PEP517=setuptools
inherit git-r3 distutils-r1

DESCRIPTION="FPGA Assembly (FASM) Parser and Generator"
HOMEPAGE="https://github.com/SymbiFlow/fasm"
EGIT_REPO_URI="https://github.com/SymbiFlow/fasm"

LICENSE="ISC"
SLOT="0"
KEYWORDS=""
REQUIRED_USE="${PYiTHON_REQUIRED_USE}"

DEPEND="
	dev-cpp/antlr-cpp
	dev-java/antlr:4
	dev-python/flake8
	dev-python/pytest
	dev-python/textX
"
RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
"
BDEPEND=""

python_compile() {
	distutils-r1_python_compile --antlr-runtime=shared
}
