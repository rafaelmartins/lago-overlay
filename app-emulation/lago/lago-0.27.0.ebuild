# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1 user

DESCRIPTION="Deploy and tear down environments of several virtual machines"
HOMEPAGE="http://lago.readthedocs.io/"
SRC_URI="http://resources.ovirt.org/repos/${PN}/stable/0.0/src/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	app-admin/sudo
	app-emulation/qemu
	dev-vcs/git
	app-emulation/libvirt
	app-emulation/libguestfs[${PYTHON_USEDEP}]
	dev-python/libvirt-python[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/lockfile[${PYTHON_USEDEP}]
	dev-python/nose[${PYTHON_USEDEP}]
	dev-python/paramiko[${PYTHON_USEDEP}]
	dev-python/python-magic[${PYTHON_USEDEP}]
	dev-python/xmltodict[${PYTHON_USEDEP}]
	dev-python/scp[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/pbr[${PYTHON_USEDEP}]
	dev-python/stevedore[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/enum[${PYTHON_USEDEP}]
	dev-python/pbr[${PYTHON_USEDEP}]
	dev-python/pyxdg[${PYTHON_USEDEP}]
	dev-python/configparser[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

# FIXME: install ovirt-lago deps
# FIXME: run tests

python_install_all() {
	distutils-r1_python_install_all

	keepdir /var/lib/lago/subnets
	keepdir /var/lib/lago/store
	keepdir /var/lib/lago/repos
	keepdir /var/lib/lago/reposync

	insinto /etc/sudoers.d
	doins etc/sudo/lago
	fperms 0644 /etc/sudoers.d/lago
}

pkg_setup() {
	enewgroup lago
}
