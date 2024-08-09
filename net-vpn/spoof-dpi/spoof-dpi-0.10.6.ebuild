# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A simple and fast software designed to bypass Deep Packet Inspection"
HOMEPAGE="https://github.com/xvzc/SpoofDPI"

SRC_URI="https://github.com/xvzc/SpoofDPI/releases/download/v${PV}/spoof-dpi-linux-amd64.tar.gz -> ${P}.tar.gz"
S="$WORKDIR"
LICENSE="Apache-2.0"
SLOT="0"
RDEPEND=""
DEPEND="${RDEPEND}"

src_install() {
default
dobin spoof-dpi
newinitd "${FILESDIR}/${PN}" ${PN}
}

