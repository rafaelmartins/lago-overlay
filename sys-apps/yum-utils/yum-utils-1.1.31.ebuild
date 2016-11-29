# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# FIXME: not all tools have correct dependencies

EAPI=6

PYTHON_COMPAT=( python2_7 )
inherit python-r1

DESCRIPTION="Utilities based around the yum package manager"
HOMEPAGE="http://yum.baseurl.org/download/yum-utils/"
SRC_URI="http://yum.baseurl.org/download/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sys-apps/yum[${PYTHON_USEDEP}]
	dev-python/kitchen[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
