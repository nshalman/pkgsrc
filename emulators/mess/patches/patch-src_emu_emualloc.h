$NetBSD: patch-src_emu_emualloc.h,v 1.2 2014/02/06 10:40:19 wiz Exp $

--- src/emu/emualloc.h.orig	2013-10-16 09:14:50.000000000 +0000
+++ src/emu/emualloc.h
@@ -77,6 +77,7 @@ void dump_unfreed_mem();
 // zeromem_t is a dummy class used to tell new to zero memory after allocation
 class zeromem_t { };
 
+#if 0
 #ifndef NO_MEM_TRACKING
 
 // standard new/delete operators (try to avoid using)
@@ -109,6 +110,7 @@ ATTR_FORCE_INLINE inline void operator d
 }
 
 #endif
+#endif
 
 // file/line new/delete operators
 ATTR_FORCE_INLINE inline void *operator new(std::size_t size, const char *file, int line) throw (std::bad_alloc)
