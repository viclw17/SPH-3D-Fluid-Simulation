//------------------------------------------------------------------------------
// File : textureobj.hpp
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
// textureobj.hpp : routines for handling the creation/deletion of texture
// objects. The following routines are provided:
//   1) creation of a texture object from an RGB color buffer
//   2) creation of a texture object direction from an RGB framebuffer
//   3) texture drawing routine
//   4) texture object deletion and existence checking
//============================================================================

#include <GL/glut.h>

#ifdef OPENGL_VERSION_1
 #define glGenTextures glGenTexturesEXT
 #define glBindTexture glBindTextureEXT
 #define glIsTexture glIsTextureEXT
 #define glDeleteTextures glDeleteTexturesEXT
 #define glCopyTexImage2D glCopyTexImage2DEXT
#endif

GLuint CreateTextureObjFromColorBuffer(GLubyte *Color, int Width, int Height,
                       GLfloat       WrapMode=GL_REPEAT,
				       GLfloat     InterpMode=GL_LINEAR,
				       GLint   internalFormat=GL_RGB,
                       GLenum          format=GL_RGB);


// Kept for compatibility reasons with old GLVU.
GLuint CreateTextureObjFromColorBuffer(GLubyte *Color, int Width, int Height,
                       GLfloat   WrapMode,
				       GLfloat InterpMode,
				       bool      UseAlpha);

GLuint CreateTextureObjFromColorBuffer(int Width, int Height,
				       GLint   ReadBuffer,
                       GLfloat   WrapMode=GL_REPEAT,
				       GLfloat InterpMode=GL_LINEAR,
				       bool      UseAlpha=false);

GLuint CreateTextureObjFromDepthBuffer(GLubyte *Depth, int Width, int Height,
                       GLfloat   WrapMode=GL_REPEAT,
				       GLfloat InterpMode=GL_LINEAR);

GLuint CreateTextureObjFromDepthBuffer(int Width, int Height,
				       GLint   ReadBuffer,
                       GLfloat   WrapMode=GL_REPEAT,
				       GLfloat InterpMode=GL_LINEAR);

void DeleteTextureObj(GLuint TexID);
int TextureObjExists(GLuint TexID);
void DrawTextureObj(GLuint TexID, int Width, int Height);


