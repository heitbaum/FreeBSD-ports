--- ltmain.sh.orig	Tue Jul  1 14:15:27 2003
+++ ltmain.sh	Thu Jul 31 23:02:48 2003
@@ -1269,7 +1269,7 @@
 	    # These systems don't actually have a C library (as such)
 	    test "X$arg" = "X-lc" && continue
 	    ;;
-	  *-*-openbsd* | *-*-freebsd*)
+	  *-*-openbsd* | *-*-freebsd4*)
 	    # Do not include libc due to us having libc/libc_r.
 	    test "X$arg" = "X-lc" && continue
 	    ;;
@@ -1290,8 +1290,16 @@
 	continue
 	;;
 
+      -pthread)
+      compile_command="$compile_command -pthread"
+      finalize_command="$finalize_command -pthread"
+      compiler_flags="$compiler_flags -pthread"
+      continue
+      ;;
+
       -module)
 	module=yes
+	build_old_libs=no
 	continue
 	;;
 
@@ -3000,6 +3008,9 @@
 	    # problems, so we reset it completely
 	    verstring=
 	    ;;
+	  *-*-freebsd*)
+	    # FreeBSD doesn't need this...
+	    ;;
 	  *)
 	    verstring="0.0"
 	    ;;
@@ -5428,10 +5439,12 @@
 	fi
 
 	# Install the pseudo-library for information purposes.
+	if /usr/bin/false; then
 	name=`$echo "X$file" | $Xsed -e 's%^.*/%%'`
 	instname="$dir/$name"i
 	$show "$install_prog $instname $destdir/$name"
 	$run eval "$install_prog $instname $destdir/$name" || exit $?
+	fi
 
 	# Maybe install the static library, too.
 	test -n "$old_library" && staticlibs="$staticlibs $dir/$old_library"
