# Copyright  Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="6"

inherit autotools

DESCRIPTION="A Tool for Building Expert Systems"
HOMEPAGE="http://clipsrules.sourceforge.net/"

SRC_URI="mirror://sourceforge/clipsmm/${P}.tar.bz2"

LICENSE="GPLv2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

#IUSE="doc"

RESTRICT="mirror"

CDEPEND="dev-lang/clips"

DEPEND="${CDEPEND}"

RDEPEND="${CDEPEND}"

src_prepare() {
  default_src_prepare
  eautoreconf
}
# src_install() {
# 	base_src_install
# 	use doc && dodoc doc/*.doc
# }
