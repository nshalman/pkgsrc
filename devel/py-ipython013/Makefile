# $NetBSD: Makefile,v 1.7 2014/01/25 10:30:04 wiz Exp $

DISTNAME=	ipython-0.13.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel lang
MASTER_SITES=	http://archive.ipython.org/release/0.13.2/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ipython.org/
COMMENT=	Interactive computing environment for Python
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-readline-[0-9]*:../../devel/py-readline

PYTHON_VERSIONS_INCOMPATIBLE=	33 # not yet ported as of 0.13.2 (see py-ipython1 package for a compatible version)

USE_LANGUAGES=	# none
USE_TOOLS+=	gunzip

.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
