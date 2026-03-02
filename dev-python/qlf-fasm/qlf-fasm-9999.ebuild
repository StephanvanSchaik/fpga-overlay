# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..14} )
DISTUTILS_USE_PEP517=setuptools

inherit git-r3 distutils-r1

DESCRIPTION="FASM bitstream converter for QuickLogic FPGA device family"
HOMEPAGE="https://github.com/QuickLogic-Corp/ql_fasm"
EGIT_REPO_URI="https://github.com/QuickLogic-Corp/ql_fasm"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
REQUIRED_USE="${PYiTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
"
