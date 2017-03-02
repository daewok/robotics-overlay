# Copyright  Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="6"

SVN_VER=".20090722svn"
DESCRIPTION="A Tool for Building Expert Systems"
HOMEPAGE="http://clipsrules.sourceforge.net/"

SRC_URI="mirror://sourceforge/clipsmm/${P}${SVN_VER}.tar.bz2"

LICENSE="GPLv2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

#IUSE="doc"

RESTRICT="mirror"

S="${S}${SVN_VER}"

PATCHES="${FILESDIR}/0001-Remove-termcap-from-pkgconfig-file.patch"

# src_install() {
# 	base_src_install
# 	use doc && dodoc doc/*.doc
# }
