# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Deploy and tear down environments of several virtual machines"
HOMEPAGE="http://lago.readthedocs.io/"
SRC_URI="http://resources.ovirt.org/repos/${PN}/stable/0.0/src/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	app-admin/sudo
	app-emulation/qemu
	dev-vcs/git
	dev-python/libvirt-python[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/lockfile[${PYTHON_USEDEP}]
	dev-python/paramiko[${PYTHON_USEDEP}]
	dev-python/python-magic[${PYTHON_USEDEP}]
	dev-python/xmltodict[${PYTHON_USEDEP}]
	dev-python/scp[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/stevedore[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/enum[${PYTHON_USEDEP}]
	dev-python/pbr[${PYTHON_USEDEP}]
	dev-python/pyxdg[${PYTHON_USEDEP}]
	dev-python/configparser[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

# FIXME: install ovirt-lago deps
# FIXME: run tests
