dnl -------------------------------------------------------------------------

AC_DEFUN(SID_SUBST_DEF,
[
    eval "$1=\"#define $1\""
    AC_SUBST($1)
])

AC_DEFUN(SID_SUBST_UNDEF,
[
    eval "$1=\"#undef $1\""
    AC_SUBST($1)
])

AC_DEFUN(SID_SUBST,
[
    eval "$1=$2"
    AC_SUBST($1)
])

dnl -------------------------------------------------------------------------
dnl Check whether compiler has a working ``bool'' type.
dnl Will substitute @SID_HAVE_BOOL@ with either a def or undef line.
dnl -------------------------------------------------------------------------

AC_DEFUN(SID_CHECK_BOOL,
[
    AC_MSG_CHECKING([for bool])
    AC_CACHE_VAL(sid_cv_have_bool,
    [
        AC_TRY_COMPILE(
            [],
            [bool aBool = true;],
            [sid_cv_have_bool=yes],
            [sid_cv_have_bool=no]
        )
    ])
    AC_MSG_RESULT($sid_cv_have_bool)
    if test "$sid_cv_have_bool" = yes; then
        SID_SUBST_DEF(SID_HAVE_BOOL)
    else
        SID_SUBST_UNDEF(SID_HAVE_BOOL)
    fi
])

dnl -------------------------------------------------------------------------
dnl Check whether C++ library has member ios::bin instead of ios::binary.
dnl Will substitute @SID_HAVE_IOS_BIN@ with either a def or undef line.
dnl -------------------------------------------------------------------------

AC_DEFUN(SID_CHECK_IOS_BIN,
[
    AC_MSG_CHECKING(whether standard member ios::binary is available)
    AC_CACHE_VAL(sid_cv_have_ios_binary,
    [
        AC_TRY_COMPILE(
            [#include <fstream.h>],
		    [ifstream myTest(ios::in|ios::binary);],
		    [sid_cv_have_ios_binary=yes],
		    [sid_cv_have_ios_binary=no]
	    )
    ])
    AC_MSG_RESULT($sid_cv_have_ios_binary)
    if test "$sid_cv_have_ios_binary" = no; then
        SID_SUBST_DEF(SID_HAVE_IOS_BIN)
    else
        SID_SUBST_UNDEF(SID_HAVE_IOS_BIN)
    fi
])

dnl -------------------------------------------------------------------------
dnl Check whether C++ compiler supports exception-handling
dnl and in particular the "nothrow allocator".
dnl Will substitute @SID_HAVE_EXCEPTIONS@ if test code compiles.
dnl -------------------------------------------------------------------------

AC_DEFUN(SID_CHECK_EXCEPTIONS,
[
    AC_MSG_CHECKING(whether exception-handling is supported)
    AC_CACHE_VAL(sid_cv_have_exceptions,
    [
        AC_TRY_COMPILE(
            [#include <new>],
		    [char* buf = new(nothrow) char[1024];],
		    [sid_cv_have_exceptions=yes],
		    [sid_cv_have_exceptions=no]
	    )
    ])
    AC_MSG_RESULT($sid_cv_have_exceptions)
    if test "$sid_cv_have_exceptions" = yes; then
        SID_SUBST_DEF(SID_HAVE_EXCEPTIONS)
    else
        SID_SUBST_UNDEF(SID_HAVE_EXCEPTIONS)
    fi
])
