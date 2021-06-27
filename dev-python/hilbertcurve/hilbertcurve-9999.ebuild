# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..10} )

inherit git-r3 distutils-r1

DESCRIPTION="Maps between 1-D space filling hilbert curve and N-D coordinates."
HOMEPAGE="https://github.com/galtay/hilbertcurve"
EGIT_REPO_URI="https://github.com/galtay/hilbertcurve"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
REQUIRED_USE="${PYiTHON_REQUIRED_USE}"

DEPEND=""
RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
"
BDEPEND=""
