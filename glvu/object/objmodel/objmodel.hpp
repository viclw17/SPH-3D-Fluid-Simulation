//------------------------------------------------------------------------------
// File : objmodel.hpp
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
// objmodel.hpp : wavefront obj model
//============================================================================

#ifndef _OBJMODEL_
#define _OBJMODEL_

#include <object.hpp>
#include "glm.hpp"

class ObjModel : public Object
{
 public:

  GLMmodel* Obj;  // PTR TO THE OBJ-FORMAT MODEL

  ObjModel();
  ObjModel(const char *FileName, float Scale=1);
  ~ObjModel();

  void Read(const char *FileName, float Scale=1);

  void UpdateMinMax();
  void Display(unsigned int Attribs=OBJ_ALL);

  void GetTris(float* &tris, int &numtris);
  void GetTris(double* &tris, int &numtris);
  int GetNumTris();
};

#endif
