# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="ABC: System for Sequential Logic Synthesis"
HOMEPAGE="https://people.eecs.berkeley.edu/~alanmi/abc/"
EGIT_REPO_URI="https://github.com/YosysHQ/abc"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

IUSE="+static"

src_compile() {
	emake ABC_USE_PIC=1 libabc.so

	if use static ; then
		emake libabc.a
	fi
}

src_install() {
	dolib.so libabc.so

	if use static ; then
		dolib.a libabc.a
	fi
}
