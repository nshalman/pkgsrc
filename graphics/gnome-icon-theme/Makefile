# $NetBSD: Makefile,v 1.95 2014/01/13 12:44:12 obache Exp $

DISTNAME=		gnome-icon-theme-3.10.0
CATEGORIES=		graphics gnome
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-icon-theme/${PKGVERSION_NOREV:R}/}
EXTRACT_SUFX=		.tar.xz

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.gnome.org/
COMMENT=		Theme consisting of a set of icons for GNOME
LICENSE=		cc-by-sa-v3.0 AND gnu-lgpl-v3

NOT_FOR_BULK_PLATFORM=	HPUX-*-*

TOOL_DEPENDS+=		librsvg>=2.22.3:../../graphics/librsvg

GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake intltool msgfmt pkg-config
# otherwise it creates lots of lib/locale dirs, even though it doesn't
# need them (!)
USE_PKGLOCALEDIR=	yes
TOOLS_NOOP+=		gtk-update-icon-cache

PKGCONFIG_OVERRIDE=	gnome-icon-theme.pc.in

# The list of installed files depends on the version of
# icon-naming-utils, so be sure that this dependency corresponds to
# the current pkgsrc version.
BUILDLINK_API_DEPENDS.icon-naming-utils+=	icon-naming-utils>=0.8.90

EVAL_PREFIX+=		PREFIX.gtk2=gtk2+
FILES_SUBST+=		GTK_UPDATE_ICON_CACHE="${PREFIX.gtk2}/bin/gtk-update-icon-cache"
FILES_SUBST+=		ICON_THEME_DIR="${PREFIX}/share/icons/gnome"
INSTALL_TEMPLATES+=	../../graphics/gnome-icon-theme/files/icon-cache.tmpl
DEINSTALL_TEMPLATES+=	../../graphics/gnome-icon-theme/files/icon-cache.tmpl
PRINT_PLIST_AWK+=	/^share\/icons\/gnome\/icon-theme.cache$$/ { next; }

FIND_PREFIX:=	LIBRSVGDIR=librsvg
.include "../../mk/find-prefix.mk"

post-install:
	${LIBRSVGDIR}/bin/rsvg-convert ${FILESDIR}/distributor-logo.svg -w 16 -h 16 -o ${DESTDIR}${PREFIX}/share/icons/gnome/16x16/places/start-here.png
	${LIBRSVGDIR}/bin/rsvg-convert ${FILESDIR}/distributor-logo.svg -w 22 -h 22 -o ${DESTDIR}${PREFIX}/share/icons/gnome/22x22/places/start-here.png
	${LIBRSVGDIR}/bin/rsvg-convert ${FILESDIR}/distributor-logo.svg -w 24 -h 24 -o ${DESTDIR}${PREFIX}/share/icons/gnome/24x24/places/start-here.png
	${LIBRSVGDIR}/bin/rsvg-convert ${FILESDIR}/distributor-logo.svg -w 32 -h 32 -o ${DESTDIR}${PREFIX}/share/icons/gnome/32x32/places/start-here.png
	${LIBRSVGDIR}/bin/rsvg-convert ${FILESDIR}/distributor-logo.svg -w 48 -h 48 -o ${DESTDIR}${PREFIX}/share/icons/gnome/48x48/places/start-here.png
	${LIBRSVGDIR}/bin/rsvg-convert ${FILESDIR}/distributor-logo.svg -w 256 -h 256 -o ${DESTDIR}${PREFIX}/share/icons/gnome/256x256/places/start-here.png

BUILDLINK_DEPMETHOD.gettext-lib=	build
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../graphics/icon-naming-utils/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
