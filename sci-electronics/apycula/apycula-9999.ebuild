# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..14} )

inherit git-r3 distutils-r1

DESCRIPTION="Project Apicula 🐝: bitstream documentation for Gowin FPGAs."
HOMEPAGE="https://github.com/YosysHQ/apicula"
EGIT_REPO_URI="https://github.com/YosysHQ/apicula"

LICENSE="ISC"

SLOT="0"
KEYWORDS=""

DEPEND="dev-python/cattrs
	dev-python/crc
	dev-python/msgpack
	dev-python/msgspec"

RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
"

src_unpack() {
	git-r3_fetch ${EGIT_REPO}
	git-r3_checkout ${EGIT_REPO}

	pushd "${S}"
	default
	popd
}

python_prepare_all() {
	distutils-r1_python_prepare_all
}

python_install_all() {
	distutils-r1_python_install_all
}
