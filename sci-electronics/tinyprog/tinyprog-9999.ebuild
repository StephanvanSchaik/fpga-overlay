# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..10} )

inherit git-r3 distutils-r1

DESCRIPTION="An open source USB bootloader for FPGAs"
HOMEPAGE="https://github.com/tinyfpga/TinyFPGA-Bootloader"
EGIT_REPO_URI="https://github.com/tinyfpga/TinyFPGA-Bootloader"
S=$WORKDIR/tinyprog-${PV}/programmer

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
