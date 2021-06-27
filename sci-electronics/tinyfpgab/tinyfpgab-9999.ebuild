# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..10} )

inherit git-r3 distutils-r1

DESCRIPTION="Open source design files for the TinyFPGA B-Series boards."
HOMEPAGE="https://github.com/tinyfpga/TinyFPGA-B-Series"
EGIT_REPO_URI="https://github.com/tinyfpga/TinyFPGA-B-Series"
S=$WORKDIR/tinyfpgab-${PV}/programmer

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
REQUIRED_USE="${PYiTHON_REQUIRED_USE}"

DEPEND=""
RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
"
BDEPEND=""
