# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..12} )
inherit git-r3 python-any-r1

DESCRIPTION="Project X-Ray Database: XC7 Series"
HOMEPAGE="https://github.com/SymbiFlow/prjxray-db"
LICENSE="ISC"
EGIT_REPO_URI="https://github.com/SymbiFlow/prjxray-db"

SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-lang/python"

src_configure() {
	return
}

src_compile() {
	(
		echo "#!/bin/sh"
		echo "echo \"/usr/share/prjxray-db\""
	) >prjxray-config
}

src_install() {
	dobin prjxray-config
	insinto /usr/share/prjxray-db
	doins -r artix7
	doins -r kintex7
	doins -r zynq7
}
