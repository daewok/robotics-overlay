# Copyright 2016 etimmons@mit.edu
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
CATKIN_HAS_MESSAGES=yes
ROS_REPO_URI="https://git.fawkesrobotics.org/fawkes_msgs.git"
KEYWORDS="~amd64 ~arm"
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )
#ROS_SUBDIR=""
CATKIN_MESSAGES_TRANSITIVE_DEPS="dev-ros/actionlib_msgs dev-ros/geometry_msgs"

inherit ros-catkin

DESCRIPTION="Common messages to interact with Fawkes"
LICENSE="GPLv2"
SLOT="0"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"
