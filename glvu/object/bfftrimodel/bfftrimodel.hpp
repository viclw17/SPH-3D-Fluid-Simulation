//------------------------------------------------------------------------------
// File : bfftrimodel.hpp
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
// bfftrimod.hpp
//============================================================================

#ifndef _BFFTRIMODEL_
#define _BFFTRIMODEL_

#include <object.hpp>
#include "bfftri.hpp"

class BffTriModel : public Object
{
 private:
  void AddObject();

 public:

  BffTri **Objects;  // ARRAY OF PTRS TO BFF OBJECTS
  int NumObjects;

  BffTriModel();
  BffTriModel(const char *FileName, float Scale=1);
  ~BffTriModel();
  void Read(const char *FileName, float Scale=1);
  void DisplayStats();

  void UpdateMinMax();
  void Display(unsigned int Attribs=OBJ_ALL);

  void GetTris(float* &tris, int &numtris);
  int GetNumTris();
};

#endif
