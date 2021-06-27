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
IUSE="+abc plugins protobuf +python readline tcl +zlib"

RDEPEND="
	readline? ( sys-libs/readline )
	python? ( dev-lang/python dev-libs/boost )
	plugins? ( virtual/libffi virtual/pkgconfig )
	protobuf? ( dev-libs/protobuf )
	tcl? ( dev-lang/tcl )
	zlib? ( sys-libs/zlib )"

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
		echo "ENABLE_GLOB := 1"
		echo "ENABLE_LIBYOSYS := 1"
		echo "ENABLE_PYOSYS := `usex python 1 0`"
		echo "ENABLE_PROTOBUF := `usex protobuf 1 0`"
		echo "ENABLE_ZLIB := `usex zlib 1 0`"
	) >Makefile.conf
}

src_compile() {
	emake PREFIX="/usr"
}

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" install
}
