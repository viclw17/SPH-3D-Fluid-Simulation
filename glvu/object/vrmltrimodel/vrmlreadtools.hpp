//------------------------------------------------------------------------------
// File : vrmlreadtools.hpp
//------------------------------------------------------------------------------
// GLVU : Copyright 1997 - 2002 
//        The University of North Carolina at Chapel Hill
//------------------------------------------------------------------------------
// Permission to use, copy, modify, distribute and sell this software and its 
// documentation for any purpose is hereby granted without fee, provided that 
// the above copyright notice appear in all copies and that both that copyright 
// notice and this permission notice appear in supporting documentation. 
// Binaries may be compiled with this software without any royalties or 
// restrictions. 
//
// The University of North Carolina at Chapel Hill makes no representations 
// about the suitability of this software for any purpose. It is provided 
// "as is" without express or implied warranty.

//============================================================================
// vrmlreadtools.hpp
//============================================================================
#include <stdio.h>

int SkipWhitespace(FILE *fp);
int SkipToEOL(FILE *fp);
int SkipComments(FILE *fp);
int SkipWord(FILE *fp, char *Word);
void readLine(FILE *fp, char *buf);
int NextCharIs(FILE *fp, char c);
char NextChar(FILE *fp);

void PrintRestOfFile(FILE *fp);
void PrintNextN(FILE *fp, int N);

