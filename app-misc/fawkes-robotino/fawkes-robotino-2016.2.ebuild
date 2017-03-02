# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="6"

inherit eutils

DESCRIPTION="fawkes-robotino"
SRC_URI="https://files.fawkesrobotics.org/releases/${PN}-2016-2.tar.bz2"
LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

CDEPEND="
  dev-libs/boost:=
  >=dev-lang/clips-6.30
  >=dev-lang/clipsmm-0.2.1
  dev-ros/fawkes_msgs
  dev-ros/move_base
  ros-meta/gazebo_ros_pkgs
  sci-electronics/gazebo:=
  dev-libs/mongo-cxx-driver
  >=dev-lua/toluapp-1.0.93
  dev-libs/elfutils
  dev-libs/urdfdom
  sci-libs/orocos_kdl
  dev-cpp/libxmlpp:2.6
  >=net-libs/libmicrohttpd-0.9.6
  >=media-libs/libdc1394-2.1.0
  >=net-analyzer/rrdtool-1.4[graph]
  dev-ros/image_transport
  >=net-dns/avahi-0.6
  dev-cpp/gtkmm:2.4
  >=dev-cpp/cairomm-1.4.4
  dev-cpp/gconfmm
  sci-mathematics/cgal
  >=app-accessibility/flite-1.3
  >=dev-libs/OpenNI-1.0.0
  >=dev-libs/xmlrpc-c-1.23[cxx,-libxml2]
  >=dev-libs/libdaemon-0.14
  >=sci-physics/bullet-2.79:=
  >=sys-libs/glibc-2.7
  >=dev-db/sqlite-3.4
  >=dev-libs/openssl-1.0.0
  >=dev-cpp/yaml-cpp-0.2.5
  >=dev-cpp/libxmlpp-2.20.0
  >=sys-apps/file-4.21
  >=app-text/asciidoc-8.4
  >=app-doc/doxygen-1.7.2
  >=dev-cpp/glibmm-2.14
  >=dev-cpp/libglademm-2.6.4:2.4
  sci-libs/gts
  >=dev-lang/lua-5.1
  >=media-gfx/graphviz-2.22
  >=virtual/udev-147
  >=net-wireless/bluez-4.66
  >=media-libs/libsdl-1.2.13
  virtual/jpeg:62
  >=media-libs/libpng-1.2.22
  >=media-libs/opencv-1.0.0
  dev-cpp/eigen:3
  !!app-accessibility/festival
"
# CDEPEND="ros? (

#   !!app-accessibility/festival
#   dev-lua/toluapp
#   media-libs/freeglut
#   virtual/glu
#   media-libs/mesa
#   dev-libs/libxslt
#   dev-util/desktop-file-utils
#   sci-libs/pcl
#   sys-apps/file
#   dev-texlive/texlive-latex
# "

DEPEND="${CDEPEND}
  >=sys-devel/make-3.81
  >=sys-kernel/linux-headers-2.6.17
  >=app-shells/bash-3.2
  >=sys-devel/gcc-4.2[openmp]
  dev-libs/urdfdom_headers
"

RDEPEND="${CDEPEND}
  dev-db/mongodb "

S="${WORKDIR}/${PN}"

src_prepare () {
	epatch "${FILESDIR}/2016-patches/"*
	eapply_user
	emake switch-buildtype-sysinstall
}

src_compile() {
	emake all gui PREFIX=/usr
}
src_install() {
	emake install PREFIX=/usr DESTDIR="${D}"
}
