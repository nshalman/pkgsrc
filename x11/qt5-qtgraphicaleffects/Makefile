# $NetBSD: Makefile,v 1.3 2014/02/03 16:17:12 ryoon Exp $

PKGNAME=	qt5-qtgraphicaleffects-${QTVERSION}
PKGREVISION=	2
COMMENT=	Qt5 module for Graphics effects

.include "../../x11/qt5-qtbase/Makefile.common"

USE_LIBTOOL=		yes

CONFIGURE_ARGS+=	-I${QTDIR}/include -L${QTDIR}/lib

BUILD_DIRS+=		qtgraphicaleffects
MAKE_ENV+=		QTDIR=${QTDIR}

INSTALL_ENV+=		INSTALL_ROOT=${DESTDIR}
INSTALLATION_DIRS+=	lib/pkgconfig

.include "../../x11/qt5-qtdeclarative/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
