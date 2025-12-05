# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( python3_{10..14} )

inherit distutils-r1 git-r3

DESCRIPTION="Modern pure python C++ header parser"
HOMEPAGE="https://github.com/robotpy/cxxheaderparser"
EGIT_REPO_URI="https://github.com/robotpy/cxxheaderparser"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""

RDEPEND=""
BDEPEND=""

# distutils_enable_tests pytest
