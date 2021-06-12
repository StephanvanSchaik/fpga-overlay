# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit multilib eutils git-r3

DESCRIPTION="A framework for RTL synthesis"
HOMEPAGE="http://www.clifford.at/yosys/"
LICENSE="ISC"
EGIT_REPO_URI="https://github.com/YosysHQ/yosys"

SLOT="0"
KEYWORDS=""
IUSE="+abc plugins readline tcl"

RDEPEND="
	readline? ( sys-libs/readline )
	plugins? ( virtual/libffi virtual/pkgconfig )
	tcl? ( dev-lang/tcl )"

DEPEND="
	sys-devel/bison
	sys-devel/flex
	>=dev-lang/python-3
	sys-apps/gawk
	virtual/pkgconfig
	${RDEPEND}"

RESTRICT="abc? ( network-sandbox )"

src_configure() {
	(
		echo "ENABLE_ABC := `usex abc 1 0`"
		echo "ENABLE_TCL := `usex tcl 1 0`"
		echo "ENABLE_PLUGINS := `usex plugins 1 0`"
		echo "ENABLE_READLINE := `usex readline 1 0`"
	) >Makefile.conf
}

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" install
}
