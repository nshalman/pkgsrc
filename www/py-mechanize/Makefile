# $NetBSD: Makefile,v 1.11 2014/01/25 10:30:29 wiz Exp $

DISTNAME=	mechanize-0.2.5
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	www
MASTER_SITES=	http://pypi.python.org/packages/source/m/mechanize/ \
		http://wwwsearch.sourceforge.net/mechanize/src/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://wwwsearch.sourceforge.net/mechanize/
COMMENT=	Stateful programmatic web browsing in Python

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	33 # not yet ported as of 0.2.5

do-test:
	${RUN}cd ${WRKSRC}; ${PYTHONBIN} test.py

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
