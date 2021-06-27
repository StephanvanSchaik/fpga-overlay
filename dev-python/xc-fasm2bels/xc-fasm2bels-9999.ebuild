# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..10} )

inherit git-r3 distutils-r1

DESCRIPTION="Library to convert a FASM file into BELs importable into Vivado."
HOMEPAGE="https://github.com/SymbiFlow/symbiflow-xc-fasm2bels"
EGIT_REPO_URI="https://github.com/SymbiFlow/symbiflow-xc-fasm2bels"

LICENSE="ISC"
SLOT="0"
KEYWORDS=""
REQUIRED_USE="${PYiTHON_REQUIRED_USE}"

DEPEND=""
RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
"
BDEPEND=""
