EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..14} )

inherit distutils-r1 pypi

DESCRIPTION="Project Apicula 🐝: bitstream documentation for Gowin FPGAs."
HOMEPAGE="https://github.com/YosysHQ/apicula"

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
