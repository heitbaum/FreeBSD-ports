--- components/paint_preview/player/player_compositor_delegate.cc.orig	2023-02-11 09:11:04 UTC
+++ components/paint_preview/player/player_compositor_delegate.cc
@@ -445,8 +445,8 @@ void PlayerCompositorDelegate::ValidateProtoAndLoadAXT
   // use the AXTreeUpdate.
   auto chrome_version = capture_result_->proto.metadata().chrome_version();
   if (capture_result_->proto.metadata().has_chrome_version() &&
-      chrome_version.major() == CHROME_VERSION_MAJOR &&
-      chrome_version.minor() == CHROME_VERSION_MINOR &&
+      chrome_version.gmajor() == CHROME_VERSION_MAJOR &&
+      chrome_version.gminor() == CHROME_VERSION_MINOR &&
       chrome_version.build() == CHROME_VERSION_BUILD &&
       chrome_version.patch() == CHROME_VERSION_PATCH) {
     paint_preview_service_->GetFileMixin()->GetAXTreeUpdate(
