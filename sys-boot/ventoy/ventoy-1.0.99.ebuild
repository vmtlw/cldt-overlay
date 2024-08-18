# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Ventoy is an open source tool to create bootable USB"
HOMEPAGE="https://github.com/ventoy/Ventoy"
SRC_URI="https://github.com/ventoy/Ventoy/releases/download/v1.0.99/${P}-linux.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""



src_install() {
local DESTDIR="/opt/ventoy"
insinto "${DESTDIR}"
doins -r *
}
