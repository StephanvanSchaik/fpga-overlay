# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..14} )
DISTUTILS_USE_PEP517=setuptools

inherit git-r3 distutils-r1

DESCRIPTION="Python interface to FPGA interchange format"
HOMEPAGE="https://github.com/SymbiFlow/python-fpga-interchange"
EGIT_REPO_URI="https://github.com/SymbiFlow/python-fpga-interchange"

LICENSE="ISC"
SLOT="0"
KEYWORDS=""
REQUIRED_USE="${PYiTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
"
