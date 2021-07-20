# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4.9999
#hackport: flags: +systemlib,-use-stat3,-use-stat4,-uri-filenames,-full-text-search,-have-usleep,-json1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Backend for the persistent library using sqlite3"
HOMEPAGE="https://www.yesodweb.com/book/persistent"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="build-sanity-exe"

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?]
	>=dev-haskell/conduit-1.2.12:=[profile?]
	>=dev-haskell/microlens-th-0.4.1.1:=[profile?]
	>=dev-haskell/monad-logger-0.3.25:=[profile?]
	>=dev-haskell/persistent-2.10:=[profile?] <dev-haskell/persistent-3:=[profile?]
	dev-haskell/resource-pool:=[profile?]
	>=dev-haskell/resourcet-1.1.9:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.0.1:=
	virtual/libc
	>=dev-db/sqlite-3.0
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/exceptions
		dev-haskell/fast-logger
		>=dev-haskell/hspec-2.4
		dev-haskell/hunit
		dev-haskell/persistent-template
		dev-haskell/persistent-test
		dev-haskell/quickcheck
		dev-haskell/system-fileio
		dev-haskell/system-filepath
		dev-haskell/temporary )
"

src_configure() {
	# most flags disabled since they have no effect when system-sqlite is used.
	haskell-cabal_src_configure \
		$(cabal_flag build-sanity-exe build-sanity-exe) \
		--flag=-full-text-search \
		--flag=-have-usleep \
		--flag=-json1 \
		--flag=systemlib \
		--flag=-uri-filenames \
		--flag=-use-stat3 \
		--flag=-use-stat4
}