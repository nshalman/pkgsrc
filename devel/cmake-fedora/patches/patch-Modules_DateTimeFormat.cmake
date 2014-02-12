$NetBSD: patch-Modules_DateTimeFormat.cmake,v 1.1 2014/01/29 08:34:47 obache Exp $

* -u is much portable than --utc.

--- Modules/DateTimeFormat.cmake.orig	2012-07-13 05:44:02.000000000 +0000
+++ Modules/DateTimeFormat.cmake
@@ -28,7 +28,7 @@ IF(NOT DEFINED _DATE_TIME_FORMAT_CMAKE_)
 	IF(_locale)
 	    SET(ENV{LC_ALL} ${_locale})
 	ENDIF(_locale)
-	COMMAND_OUTPUT_TO_VARIABLE(${date_var} date --utc "${format}")
+	COMMAND_OUTPUT_TO_VARIABLE(${date_var} date -u "${format}")
     ENDMACRO(TODAY date_var format)
 
     TODAY(TODAY_CHANGELOG "+%a %b %d %Y" "C")
