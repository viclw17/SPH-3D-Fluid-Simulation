//------------------------------------------------------------------------------
// File : groundplane.hpp
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

//==========================================================================
// groundplane.hpp : bounding box ground plane (possibly textured)
//==========================================================================

#ifndef _GROUNDPLANE_
#define _GROUNDPLANE_

#include <GL/glut.h>
#include <object.hpp>

class GroundPlane : public Object
{
  private:

  // TEXTURE RGB ARRAY AND DIMENSIONS
  GLubyte *Color;
  int Width, Height;  
  int NumTiles;

  // TEXTURE OBJECT ID
  GLuint TexID;

  public:

  // GROUND PLANE REPRESENTED AS A SINGLE QUAD
  Vec3f V[4];  // VERTICES
  Vec3f C[4];  // PER-VERTEX COLORS
  Vec3f N;     // NORMAL

  GroundPlane(Vec3f min, Vec3f max, float XZscale=1, float Yoffset=0, 
              char *TextureFileName=NULL, int numtiles=1,
	      Vec3f color = Vec3f(1, 1, 1));
  ~GroundPlane();

  void UpdateMinMax();
  void Display(unsigned int Attribs=OBJ_ALL);
};

#endif
