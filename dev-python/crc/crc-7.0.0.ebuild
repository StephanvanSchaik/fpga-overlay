# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..13} )
DISTUTILS_USE_PEP517=poetry
inherit distutils-r1 pypi
# inherit git-r3 python-r1

DESCRIPTION="Library and CLI to calculate and verify all kinds of CRC checksums"
HOMEPAGE="https://github.com/Nicoretti/crc"
# EGIT_REPO_URI="https://github.com/Nicoretti/crc"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS=""
REQUIRED_USE="${PYiTHON_REQUIRED_USE}"

DEPEND=""
RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
"
BDEPEND=""
