# $NetBSD: Makefile,v 1.3 2014/01/25 10:29:57 wiz Exp $

DISTNAME=	v0.4
PKGNAME=	${PYPKGPREFIX}-musicbrainz-ngs-0.4
CATEGORIES=	audio net
MASTER_SITES=	https://github.com/alastair/python-musicbrainz-ngs/archive/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/alastair/python-musicbrainz-ngs
COMMENT=	Python bindings for Musicbrainz' NGS service
LICENSE=	2-clause-bsd

DEPENDS+=	${PYPKGPREFIX}-expat-[0-9]*:../../textproc/py-expat

WRKSRC=		${WRKDIR}/python-musicbrainz-ngs-0.4
DIST_SUBDIR=	py-musicbrainz-ngs

EGG_NAME=			musicbrainzngs-0.4

do-test:
	cd ${WRKSRC} && ${PYTHONBIN} setup.py test

.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
