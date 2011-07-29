AC_INIT([clpAPI], [1.1.6], [geliudie@uni-duesseldorf.de])

dnl # --------------------------------------------------------------------
dnl # R compiler and flags
dnl # --------------------------------------------------------------------

: ${R_HOME=`R RHOME`}
if test -z "${R_HOME}"; then
    echo "could not determine R_HOME"
    exit 1
fi

CC=`"${R_HOME}/bin/R" CMD config CC`
CFLAGS=`"${R_HOME}/bin/R" CMD config CFLAGS`
CPPFLAGS=`"${R_HOME}/bin/R" CMD config CPPFLAGS`
AC_PROG_CC


dnl # --------------------------------------------------------------------
dnl # get arguments
dnl # --------------------------------------------------------------------

AC_ARG_WITH(clp-include,
            AC_HELP_STRING([--with-clp-include=PATH],
                           [location of COIN-OR Clp include directory [[/usr/local/include]]]
                          ),
            [CLP_INCLUDE=$withval],
            [CLP_INCLUDE=""])

AC_ARG_WITH(clp-lib,
            AC_HELP_STRING([--with-clp-lib=PATH],
                           [location of COIN-OR Clp callable library [[usr/local/lib]]]
                          ),
            [CLP_LIB=$withval],
            [CLP_LIB=""])


AC_ARG_ENABLE(lapack,
              AC_HELP_STRING([--enable-lapack[=yes|no]],
                             [link to liblapack and libblas [[yes]]]
                            ),
              [LAPACK=$enableval], [LAPACK="yes"])


dnl # --------------------------------------------------------------------
dnl # test arguments
dnl # --------------------------------------------------------------------

dnl # include and library directories
if test [ -n "$CLP_INCLUDE" -a -n "$CLP_LIB" ] ; then

    if test [ ! -d "$CLP_INCLUDE" ] ; then
        AC_MSG_ERROR([directory $CLP_INCLUDE does not exist])
    else
        CLP_CPPFLAGS="-I${CLP_INCLUDE}/coin"
    fi

    if test [ ! -d "$CLP_LIB" ] ; then
        AC_MSG_ERROR([directory $CLP_LIB does not exist])
    else
        LIBS="-L${CLP_LIB} -L${CLP_LIB}/coin"
    fi

else

dnl # if no arguments are given, try to find the clp executable. If is not
dnl # found, use /usr/local

    AC_PREFIX_PROGRAM(clp)

    if test [ "$prefix" = "NONE" ] ; then

        AC_MSG_NOTICE([No prefix given, trying -I/usr/local/include and -L/usr/local/lib])

        if test [ -d "/usr/local/include" -a -d "/usr/local/lib" ] ; then
            CLP_CPPFLAGS="-I/usr/local/include -I/usr/local/include/coin"
            LIBS="-L/usr/local/lib -L/usr/local/lib/coin"
        else
            AC_MSG_ERROR([directories /usr/local/include and /usr/local/lib do not exist])
        fi

    else

        if test [ -d "$prefix/include" -a -d "$prefix/lib" ] ; then
            CLP_CPPFLAGS="-I$prefix/include -I$prefix/include/coin"
            LIBS="-L$prefix/lib -L$prefix/lib/coin"
        else
            AC_MSG_ERROR([directories $prefix/include and $prefix/lib do not exist])
        fi

    fi

fi


CPPFLAGS="${CPPFLAGS} ${CLP_CPPFLAGS}"

INCL="-lClp -lCoinUtils -lm"

if test "${LAPACK}" != "no"; then
    INCL="$INCL -llapack -lblas"
fi

LIBS="$LIBS $INCL"

echo $LIBS
dnl # --------------------------------------------------------------------
dnl # CFLAGS
dnl # --------------------------------------------------------------------

OS_NAME=`uname -s`
MACHINE_NAME=`uname -m`

CLP_CFLAGS="-Wall -ansi"

# compiler dependent
if test [ "${CC:0:3}" = "icc" ] ; then

dnl # for icc: disable remark #981: operands are evaluated in unspecified order
    CLP_CFLAGS="-wd981"
else
    if test [ "${CC:0:3}" = "gcc" ] ; then
        CLP_CFLAGS="${CLP_CFLAGS} -Wextra -Wunknown-pragmas"
        CLP_CFLAGS="${CLP_CFLAGS} -Wconversion -Wwrite-strings"
        CLP_CFLAGS="${CLP_CFLAGS} -Wcast-qual"
        CLP_CFLAGS="${CLP_CFLAGS} -pedantic"
    fi
fi


dnl # --------------------------------------------------------------------
dnl # check header and library
dnl # --------------------------------------------------------------------

AC_CHECK_HEADER([Clp_C_Interface.h],,
    AC_MSG_ERROR([Could not find Clp_C_Interface.h:
      clpAPI requires clp from http://www.coin-or.org/projects/Clp.xml
      use --with-clp-include or CLP_INCLUDE to specify the include path.]))


AC_SEARCH_LIBS([Clp_newModel], [Clp], ,
    AC_MSG_ERROR([Could not link to clp:
      use --with-clp-lib or CLP_LIB to specify the lib path.]))


dnl # --------------------------------------------------------------------
dnl # substitute src/Makevars
dnl # --------------------------------------------------------------------

AC_SUBST(CLP_CFLAGS)
AC_SUBST(CLP_CPPFLAGS)
AC_SUBST(LIBS)
AC_OUTPUT(src/Makevars)

exit 0
