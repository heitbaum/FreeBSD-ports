--- third_party/boringssl/src/crypto/fipsmodule/ec/asm/p256-x86_64-asm.pl.orig	2023-02-11 09:11:04 UTC
+++ third_party/boringssl/src/crypto/fipsmodule/ec/asm/p256-x86_64-asm.pl
@@ -62,6 +62,7 @@ $code.=<<___;
 .extern	OPENSSL_ia32cap_P
 
 # The polynomial
+.rodata
 .align 64
 .Lpoly:
 .quad 0xffffffffffffffff, 0x00000000ffffffff, 0x0000000000000000, 0xffffffff00000001
@@ -80,6 +81,7 @@ $code.=<<___;
 .quad 0xf3b9cac2fc632551, 0xbce6faada7179e84, 0xffffffffffffffff, 0xffffffff00000000
 .LordK:
 .quad 0xccd1c8aaee00bc4f
+.previous
 ___
 
 {
