# $NetBSD: Makefile,v 1.37 2014/01/11 10:52:09 adam Exp $

DISTNAME=	grep-2.16
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GNU:=grep/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	bouyer@NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/grep/grep.html
COMMENT=	GNU grep
LICENSE=	gnu-gpl-v3 # or later

USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		makeinfo msgfmt
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-perl-regexp
CONFIGURE_ARGS+=	--program-prefix=g
CONFIGURE_ENV+=		MKDIR_P=${INSTALL_DATA_DIR:Q}
INFO_FILES=		yes
TEXINFO_REQD=		4.0

INSTALLATION_DIRS=	${PKGGNUDIR}bin ${PKGGNUDIR}${PKGMANDIR}/man1

.include "../../mk/bsd.prefs.mk"

post-install:
.for g n in  bin/ggrep ${PKGGNUDIR}bin/grep bin/gegrep ${PKGGNUDIR}bin/egrep \
             bin/gfgrep ${PKGGNUDIR}bin/fgrep   \
             man/man1/ggrep.1 ${PKGGNUDIR}${PKGMANDIR}/man1/grep.1 \
             man/man1/ggrep.1 ${PKGGNUDIR}${PKGMANDIR}/man1/egrep.1 \
             man/man1/ggrep.1 ${PKGGNUDIR}${PKGMANDIR}/man1/fgrep.1
	${LN} -sf ${PREFIX}/${g} ${DESTDIR}${PREFIX}/${n}
.endfor

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
