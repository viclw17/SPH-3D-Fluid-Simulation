//------------------------------------------------------------------------------
// File : glbuffers.hpp
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
// glbuffers.hpp : OpenGL buffer handling module. This routine was created
//   to modularize dealing with saving, restoring, and modifying the various 
//   OpenGL buffer (color, depth, stencil, etc).
//============================================================================

#ifndef GLBUFFERS_H
#define GLBUFFERS_H

#include <GL/glut.h>
#include <stdio.h>

#ifdef W
#undef W
#endif

inline void SetPixel(const GLubyte *Color, 
                     const int x, const int y, 
                     GLubyte *ColorBuffer, 
                     const int Width);
void DrawBorder(const GLubyte *C, GLubyte *ColorBuffer, const int W,
		const int H);
void SaveColorBuffer(GLubyte* &Color, int &Width, int &Height,
		     const GLint ReadBuffer=GL_BACK);
void SaveAlphaBuffer(GLubyte* &Alpha, int &Width, int &Height,
		     const GLint ReadBuffer=GL_BACK);
void SaveColorAndAlphaBuffer(GLubyte* &ColorAlpha, int &Width, int &Height,
		     const GLint ReadBuffer=GL_BACK);

void SaveColorBufferToPPM(char *FileName, const GLint ReadBuffer=GL_BACK);

void DrawColorBuffer(GLubyte *Color, int Width, int Height,
		     const GLint DrawBuffer=GL_BACK);

inline void SetPixel(const GLfloat Depth, 
                     const int x, const int y, 
                     GLfloat *DepthBuffer, 
                     const int Width);
void SaveDepthBuffer(GLfloat* &Depth, int &Width, int &Height,
		     const GLint ReadBuffer=GL_BACK);
void DrawDepthBuffer(GLfloat *Depth, int Width, int Height,
		     const GLint DrawBuffer=GL_BACK);


#endif
