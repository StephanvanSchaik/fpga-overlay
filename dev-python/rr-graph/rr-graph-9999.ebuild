# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..14} )
DISTUTILS_USE_PEP517=setuptools

inherit git-r3 distutils-r1

DESCRIPTION="Collection of Routing Resources Graph (RR Graph) libraries for VPR"
HOMEPAGE="https://github.com/SymbiFlow/symbiflow-rr-graph"
EGIT_REPO_URI="https://github.com/SymbiFlow/symbiflow-rr-graph"

LICENSE="ISC"
SLOT="0"
KEYWORDS=""
REQUIRED_USE="${PYiTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
"
