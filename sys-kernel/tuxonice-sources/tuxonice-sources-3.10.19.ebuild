#TuxOnIce + Gentoo patchset sources

EAPI="5"
ETYPE="sources"
K_WANT_GENPATCHES="base extras experimental"
K_GENPATCHES_VER="27"
K_DEBLOB_AVAILABLE="1"
inherit kernel-2
detect_version
detect_arch

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
DESCRIPTION="TuxOnIce + Gentoo patchset sources"
HOMEPAGE="http://dev.gentoo.org/~mpagano/genpatches/ http://www.tuxonice.net"
IUSE="deblob experimental"

TUXONICE_SNAPSHOT="2013-11-15"
TUXONICE_PV="$(replace_version_separator 2 '.')"

TUXONICE_PATCH="tuxonice-for-linux-${TUXONICE_PV}-${TUXONICE_SNAPSHOT}.patch.bz2"
TUXONICE_URI="http://tuxonice.net/downloads/all/${TUXONICE_PATCH}"
UNIPATCH_LIST="${DISTDIR}/${TUXONICE_PATCH}"
UNIPATCH_STRICTORDER="yes"
SRC_URI="${KERNEL_URI} ${GENPATCHES_URI} ${ARCH_URI} ${TUXONICE_URI}"

RDEPEND="${RDEPEND}
	>=sys-apps/tuxonice-userui-1.0
	|| ( >=sys-power/hibernate-script-2.0 sys-power/pm-utils )"

K_EXTRAELOG="If there are issues with this kernel, please direct any
		queries to the tuxonice-users mailing list:
		http://lists.tuxonice.net/mailman/listinfo/tuxonice-users/"
K_SECURITY_UNSUPPORTED="1"
