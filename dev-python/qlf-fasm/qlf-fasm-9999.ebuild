# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..10} )

inherit git-r3 distutils-r1

DESCRIPTION="FASM bitstream converter for QuickLogic FPGA device family"
HOMEPAGE="https://github.com/QuickLogic-Corp/ql_fasm"
EGIT_REPO_URI="https://github.com/QuickLogic-Corp/ql_fasm"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
REQUIRED_USE="${PYiTHON_REQUIRED_USE}"

DEPEND=""
RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
"
BDEPEND=""
