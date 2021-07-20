# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.0

EAPI=7

CRATES="
ansi_term-0.11.0
anyhow-1.0.26
atty-0.2.13
bitflags-1.2.0
cargo-ebuild-0.3.0
cargo_metadata-0.9.1
clap-2.33.0
either-1.5.3
heck-0.3.1
itertools-0.8.2
itoa-0.4.4
libc-0.2.62
proc-macro-error-0.2.6
proc-macro2-1.0.5
quote-1.0.2
redox_syscall-0.1.56
ryu-1.0.0
semver-0.9.0
semver-parser-0.7.0
serde-1.0.101
serde_derive-1.0.101
serde_json-1.0.41
strsim-0.8.0
structopt-0.3.3
structopt-derive-0.3.3
syn-1.0.5
textwrap-0.11.0
time-0.1.42
unicode-segmentation-1.3.0
unicode-width-0.1.6
unicode-xid-0.2.0
vec_map-0.8.1
winapi-0.3.8
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION="Generates an ebuild for a package using the in-tree eclasses."
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/cardoe/cargo-ebuild"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="Apache-2.0 Boost-1.0 MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~ppc64"
IUSE=""

DEPEND=""
RDEPEND=""