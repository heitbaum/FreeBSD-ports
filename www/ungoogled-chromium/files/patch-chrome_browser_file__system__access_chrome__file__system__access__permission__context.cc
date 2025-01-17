--- chrome/browser/file_system_access/chrome_file_system_access_permission_context.cc.orig	2023-02-23 13:06:30 UTC
+++ chrome/browser/file_system_access/chrome_file_system_access_permission_context.cc
@@ -300,7 +300,7 @@ const struct {
     {base::DIR_HOME, FILE_PATH_LITERAL("Library/CloudStorage"),
      kDontBlockChildren},
 #endif
-#if BUILDFLAG(IS_LINUX) || BUILDFLAG(IS_CHROMEOS)
+#if BUILDFLAG(IS_LINUX) || BUILDFLAG(IS_CHROMEOS) || BUILDFLAG(IS_BSD)
     // On Linux also block access to devices via /dev.
     {kNoBasePathKey, FILE_PATH_LITERAL("/dev"), kBlockAllChildren},
     // And security sensitive data in /proc and /sys.
