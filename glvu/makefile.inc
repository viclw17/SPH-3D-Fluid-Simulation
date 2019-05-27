#-----------------------------------------------------------------------------
# GLVU MAKE STANDARD INCLUDE
#-----------------------------------------------------------------------------

#### STANDARD FLAGS FOR COMPILE COMMANDS
## SGI CC
##CFLAGS_STD = -O2 $(EXTRA_CFLAGS)
CFLAGS_STD = -g $(EXTRA_CFLAGS)
IFLAGS_STD = -I. $(EXTRA_IFLAGS)
LDFLAGS_STD = $(EXTRA_LDFLAGS)
ARFLAGS_STD = $(EXTRA_ARFLAGS) -o
## GNU g++
#CFLAGS_STD = -O2 $(EXTRA_CFLAGS)
#IFLAGS_STD = -I. $(EXTRA_IFLAGS)
#LDFLAGS_STD = $(EXTRA_LDFLAGS)
#ARFLAGS_STD = cr$(EXTRA_ARFLAGS)

#### DEFINE COMPILER, LINKER AND SHELL TO USEa
## SGI
CC=CC
cc=cc
AR=CC -ar
SHELL=sh
## GNU
#CC=g++-2.95.1
#cc=gcc
#AR=ar
#SHELL=sh

## WHERE TO FIND CERTAIN HEADERS AND LIBS
GL_INCDIR = /usr/include
GLUT_INCDIR = /afs/unc/proj/walk/release/include
GLUT_LIBDIR = /afs/unc/proj/walk/release/lib/sgi_irix.n32

## NAME OF AUTOMATICALLY GENERATED DEPENDANCIES FILE
DEPS = .deps

## STANDARD CONVERSION RULES
.SUFFIXES: .o .cpp .c

## STANDARD cpp FILE COMPILE RULE
.cpp.o:
	$(CC) -c $(CFLAGS) $(IFLAGS) $*.cpp -o $*.o

## STANDARD c FILE COMPILE RULE
.c.o:
	$(CC) -c $(CFLAGS) $(IFLAGS) $*.c -o $*.o

