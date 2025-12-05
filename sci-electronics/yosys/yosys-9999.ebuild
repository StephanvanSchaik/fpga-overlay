# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..14} )

inherit git-r3 python-r1

DESCRIPTION="A framework for RTL synthesis"
HOMEPAGE="http://www.clifford.at/yosys/"
LICENSE="ISC"
EGIT_REPO_URI="https://github.com/YosysHQ/yosys"

SLOT="0"
KEYWORDS=""
IUSE="+abc clang plugins +python readline tcl +zlib"

RDEPEND="
	abc? ( dev-libs/abc )
	readline? ( sys-libs/readline )
	python? ( ${PYTHON_DEPS} dev-libs/boost )
	plugins? ( dev-libs/libffi virtual/pkgconfig )
	tcl? ( dev-lang/tcl )
	zlib? ( sys-libs/zlib )"

DEPEND="
	sys-devel/bison
	sys-devel/flex
	>=dev-lang/python-3
	sys-apps/gawk
	virtual/pkgconfig
	${RDEPEND}"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

# PATCHES=(
# 	"${FILESDIR}/${P}-makefile.patch"
# )

src_configure() {
	if use clang ; then
		emake config-clang
	else
		emake config-gcc
	fi

	if use abc ; then
		(
			echo "ENABLE_ABC := 1"
			echo "ABCEXTERNAL := `which abc`"
		) >Makefile.conf
	else
		(
			echo "ENABLE_ABC := 0"
		) >Makefile.conf
	fi

	(
		echo "ENABLE_TCL := `usex tcl 1 0`"
		echo "ENABLE_PLUGINS := `usex plugins 1 0`"
		echo "ENABLE_READLINE := `usex readline 1 0`"
		echo "ENABLE_GLOB := 1"
		echo "ENABLE_LIBYOSYS := 1"
		echo "ENABLE_PYOSYS := `usex python 1 0`"
		echo "ENABLE_ZLIB := `usex zlib 1 0`"
	) >>Makefile.conf
}

src_compile() {
	emake PREFIX="/usr"
}

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" install
}
