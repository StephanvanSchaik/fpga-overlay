# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit multilib eutils git-r3

DESCRIPTION="Plugins for Yosys developed as part of the SymbiFlow project."
HOMEPAGE="https://github.com/SymbiFlow/yosys-symbiflow-plugins"
LICENSE="ISC"
EGIT_REPO_URI="https://github.com/SymbiFlow/yosys-symbiflow-plugins"

SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="
	sci-electronics/yosys[plugins,tcl]
	dev-lang/tcl
	${RDEPEND}"

src_compile() {
	CXX=$(yosys-config --cxx) \
	CXXFLAGS=$(yosys-config --cxxflags) \
	LDFLAGS=$(yosys-config --ldflags) \
	LDLIBS=$(yosys-config --ldlibs) \
	PLUGINS_DIR=$(shell yosys-config --datdir)/plugins \
	DATA_DIR=$(shell yosys-config --datdir) \
	emake
}

src_install() {
	insinto /usr/share/yosys/plugins
	doins design_introspection-plugin/design_introspection.so
	doins fasm-plugin/fasm.so
	doins integrateinv-plugin/integrateinv.so
	doins params-plugin/params.so
	doins ql-iob-plugin/ql-iob.so
	doins ql-qlf-plugin/ql-qlf.so
	doins sdc-plugin/sdc.so
	doins xdc-plugin/xdc.so
}
