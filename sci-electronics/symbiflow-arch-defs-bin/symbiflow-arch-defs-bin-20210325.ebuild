# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit check-reqs

DESCRIPTION="Scripts to invoke the SymbiFlow toolchain."
HOMEPAGE="https://github.com/SymbiFlow/symbiflow-arch-defs"
SRC_URI="
	https://storage.googleapis.com/symbiflow-arch-defs/artifacts/prod/foss-fpga-tools/symbiflow-arch-defs/continuous/install/201/20210325-000253/symbiflow-arch-defs-install-1c7a3d1e.tar.xz
	xc7a50t? ( https://storage.googleapis.com/symbiflow-arch-defs/artifacts/prod/foss-fpga-tools/symbiflow-arch-defs/continuous/install/201/20210325-000253/symbiflow-arch-defs-xc7a50t_test-1c7a3d1e.tar.xz )
	xc7a100t? ( https://storage.googleapis.com/symbiflow-arch-defs/artifacts/prod/foss-fpga-tools/symbiflow-arch-defs/continuous/install/201/20210325-000253/symbiflow-arch-defs-xc7a100t_test-1c7a3d1e.tar.xz )
	xc7a200t? ( https://storage.googleapis.com/symbiflow-arch-defs/artifacts/prod/foss-fpga-tools/symbiflow-arch-defs/continuous/install/201/20210325-000253/symbiflow-arch-defs-xc7a200t_test-1c7a3d1e.tar.xz )
	xc7z010? ( https://storage.googleapis.com/symbiflow-arch-defs/artifacts/prod/foss-fpga-tools/symbiflow-arch-defs/continuous/install/201/20210325-000253/symbiflow-arch-defs-xc7z010_test-1c7a3d1e.tar.xz )
	xc7z020? ( https://storage.googleapis.com/symbiflow-arch-defs/artifacts/prod/foss-fpga-tools/symbiflow-arch-defs/continuous/install/200/20210324-020513/symbiflow-arch-defs-xc7z020_test-1c7a3d1e.tar.xz )
"
S=$WORKDIR

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+xc7a50t +xc7a100t +xc7a200t +xc7z010 +xc7z020"

DEPEND="
	dev-embedded/openocd
	dev-libs/libxml2
	dev-python/constraint
	dev-python/fasm
	dev-python/flake8
	dev-python/fpga-interchange
	dev-python/GitPython
	dev-python/hilbertcurve
	dev-python/intervaltree
	dev-python/json5
	dev-python/matplotlib
	dev-python/numpy
	dev-python/pdfminer-six
	dev-python/ply
	dev-python/progressbar2
	dev-python/pycapnp
	dev-python/pytest
	dev-python/pyyaml
	dev-python/qlf-fasm
	dev-python/rr-graph
	dev-python/scipy
	dev-python/sdf-timing
	dev-python/simplejson
	dev-python/svgwrite
	dev-python/textx
	dev-python/v2x
	dev-python/vtr-xml-utils
	dev-python/xc-fasm
	dev-python/xc-fasm2bels
	dev-python/yapf
	media-gfx/cairosvg
	sci-electronics/icestorm
	sci-electronics/iverilog
	sci-electronics/prjxray
	sci-electronics/prjxray-db
	sci-electronics/tinyfpgab
	sci-electronics/tinyprog
	sci-electronics/vtr
	sci-electronics/yosys
"
RDEPEND="${DEPEND}"
BDEPEND=""

CHECKREQS_DISK_BUILD="24G"
CHECKREQS_DISK_USR="24G"

src_prepare() {
	eapply_user
	sed -i "s#source [^\"]*/env#source /usr/bin/symbiflow_env#" bin/*
}

src_compile() {
	return
}

src_install() {
	dobin bin/symbiflow_generate_constraints
	dobin bin/symbiflow_pack
	dobin bin/symbiflow_place
	dobin bin/symbiflow_route
	dobin bin/symbiflow_synth
	dobin bin/symbiflow_write_bitstream
	dobin bin/symbiflow_write_fasm
	dobin bin/vpr_common
	newbin bin/env symbiflow_env
	insinto /usr/share
	doins -r share/symbiflow
}
