# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils git-r3 multilib

DESCRIPTION="Project U-Ray Database: UltaScale Series"
HOMEPAGE="https://github.com/SymbiFlow/prjuray-db"
LICENSE="ISC"
EGIT_REPO_URI="https://github.com/SymbiFlow/prjuray-db"

SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-lang/python"

src_configure() {
	return
}

src_compile() {
	return
}

src_install() {
	insinto /usr/share/prjuray-db
	doins -r zynqusp
}
