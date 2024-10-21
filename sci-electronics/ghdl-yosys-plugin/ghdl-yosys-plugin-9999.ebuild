# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# inherit cmake

DESCRIPTION="VHDL synthesis (based on ghdl)"
HOMEPAGE="https://github.com/ghdl/ghdl-yosys-plugin"
LICENSE="GPL-3+"

if [[ ${PV} = 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/ghdl/ghdl-yosys-plugin.git"
else
    # TODO:
	SRC_URI="https://github.com/ghdl/ghdl-yosys-plugin/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

SLOT="0"
IUSE=""

BDEPEND="sci-electronics/ghdl"
RDEPEND="${BDEPEND}"
DEPEND="sci-electronics/yosys"


