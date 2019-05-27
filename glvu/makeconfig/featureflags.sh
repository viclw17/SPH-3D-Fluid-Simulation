#!/bin/sh

# This script returns the flags make should use.
# Two arguments are supplied:
#    featureflags.sh  feature_id want_flags build_spec

# build_spec - a string identifying the build type, it corresponds
#              to the FULL_BUILD_SPEC variable used in the makefiles. 
# feature_id - something like OPENGL, TCLTK, GLUI
# want_flags - one of LDFLAGS, CPPFLAGS, ... which flags make is
#              requesting.

# example:  featureflags.sh opengl LIBS opt

#if  [  $# -lt 2 ] ; then 
#    exit; # insufficient args
#fi


feature_id=$1; shift;
want_flags=$1; shift;
build_spec=$1; shift;

# echo feature id: $feature_id

# Most features don't really depend on the build_spec, but it's there
# if needed to differentiate between cases.  Over time this file may
# get complicated, but the goal is for a person to be able to customize it 
# to work on the platforms he uses regularly.

# If you set UNAME externally, it isn't changed.
# This is so you can test rules for platforms you aren't currently on.
# In many shells you can set a variable once for a particular program by 
# prefixing the assignment to the command.  I.e. instead of running 
#   featureflags.sh
# you run
#   UNAME=IRIX64 featureflags.sh
# And UNAME is only set in the subshell in which featureflags.sh runs.

if [ "$UNAME" = "" ]; then
   UNAME=`uname`
fi

if [ "$PROCESSOR" = "" ]; then
   PROCESSOR=`uname -m`
fi

############################################################################
# feature lookup functions
#   Note that you can have feature Y depend on feature X by simply
#   calling feature_X from feature_Y.  
############################################################################
feature_math()
{
    LIBS="-lm $LIBS"
}
feature_threads ()
{
    case $UNAME in 
    Linux*)  LIBS="-lpthread $LIBS" ;;
    IRIX*)   LIBS="-lmpc $LIBS"; 
             # these two might should be a different feature like OpenMP
             CPPFLAGS="$CPPFLAGS -mp"; LDFLAGS="$LDFLAGS -mp" ;;
    esac
}
feature_xwin ()
{
    feature_math;
    case $UNAME in 
    Linux*) 
	LDFLAGS="$LD_FLAGS -L/usr/X11R6/lib";
	LIBS="-lXmu -lXext -lX11 $LIBS";
	CPPFLAGS="$CPPFLAGS -I/usr/X11R6/include";
    ;;
    IRIX*)
	LIBS="-lXmu -lXext -lX11 $LIBS";
    ;;
    CYGWIN*)
	LIBS="$LIBS";
    ;;
    *)
	LIBS="-lXmu -lXext -lX11 $LIBS";
    ;;
    esac
}
feature_opengl ()
{
    case $UNAME in 
    IRIX*)
        feature_xwin;
	# so we get sysgl, not mesagl (UNC-specific thing)
	CPPFLAGS="-I/usr/include $CPPFLAGS";
    ;;
    esac

    case $UNAME in
    CYGWIN*)
	LIBS="-lopengl32 -lglu32 $LIBS";
    ;;
    *)
        feature_xwin;


	LIBS="-lGL -lGLU $LIBS";
	if [ "$PROCESSOR" == "ia64" ]; then
	  LIBS="$LIBS -L/usr/lib/gcc-lib/ia64-redhat-linux/2.96 -lgcc";
	fi

    ;;
    esac
}
feature_glut ()
{
    feature_opengl;
    case $UNAME in 
    IRIX*)
	# pull num bits out of build_spec 32 64, n32, o32
	# (lots of UNC-specific stuff here)
	bits=`echo $build_spec | sed -e "s/.*\([no]?32\).*/\1/;s/.*\(64\).*/\1/"`  
	CPPFLAGS="-I/afs/unc/proj/walk/release/include $CPPFLAGS";
	case $bits in
	64)  newLDFLAG="-L/afs/unc/proj/walk/release/lib/sgi_irix.64" ;;
	o32) newLDFLAG="-L/afs/unc/proj/walk/release/lib/sgi_irix.o32" ;;
	*)   newLDFLAG="-L/afs/unc/proj/walk/release/lib/sgi_irix.n32" ;;
	esac
	LDFLAGS="$newLDFLAG $LDFLAGS"
    ;;
    esac

    case $UNAME in
    CYGWIN*)
	LIBS="-lglut32 $LIBS";
    ;;
    *)
	LIBS="-lglut $LIBS";
    ;;
    esac

}
feature_glui ()
{
    feature_glut;
    LIBS="-lglui $LIBS";
}

#feature_tcltk ()
#{
#    echo "you chose tcltk -- i know nothing about tcltk";
#}


############################################################
# Choose the "feature function"
############################################################


# call a computed function name for each feature,
# ignore if there's no such function
for feature in $feature_id; do 
  fname=feature_${feature};

  # 'type' should return something ending with the word "function" in it
  # (is there a better way to check to see if $fname is a defined function?  
  # Or a better way to prevent the printing of the error when $fname isn't
  # a type?)  Further, -t only works on bash, not sh, the stderr redirect
  # also serves to hide that error on sh.

  typestr=`type -t $fname 2> /dev/null`
  subtypestr=${typestr%function}
  if [ "$typestr" != "$subtypestr" ] ; then
     $fname;
  fi
done

# Spit out contents of variable referred to by want_flags
#   Doesn't work on older shells!!
#flags=${$want_flags}

# Same effect via case statement
case $want_flags in
    CPPFLAGS) flags=$CPPFLAGS ;;
    LIBS)     flags=$LIBS ;;
    LDFLAGS)  flags=$LDFLAGS ;;
esac
[ "$flags" != "" ] && echo $flags
