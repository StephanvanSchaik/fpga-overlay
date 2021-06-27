# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..10} )

inherit git-r3 distutils-r1

DESCRIPTION="Tool for converting specialized annotated Verilog models into XML needed for Verilog to Routing flow."
HOMEPAGE="https://github.com/SymbiFlow/python-symbiflow-v2x"
EGIT_REPO_URI="https://github.com/SymbiFlow/python-symbiflow-v2x"

LICENSE="ISC"
SLOT="0"
KEYWORDS=""
REQUIRED_USE="${PYiTHON_REQUIRED_USE}"

DEPEND="dev-python/pytest-runner"
RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
"
BDEPEND=""
