# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 git-r3

DESCRIPTION="A modern hardware definition language and toolchain based on Python"
HOMEPAGE="https://amaranth-lang.org/docs/amaranth/latest"
EGIT_REPO_URI="https://github.com/amaranth-lang/amaranth"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS=""

RDEPEND="
	dev-python/jinja
	>=dev-python/pyvcd-0.2.2
"
BDEPEND=""

distutils_enable_tests pytest
