//------------------------------------------------------------------------------
// File : wavy.hpp
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
// wavy.hpp : the animated wavy ground object
//==========================================================================

#ifndef _WAVY_
#define _WAVY_

#include <object.hpp>

typedef float V3fv[3];

class WavyGround : public Object
{
  public:

  int I, J;            // MESH DIMENSIONS ALONG X AND Z RESPECTIVELY
  V3fv **V, **N, **C;  // THE WAVY MESH: VERTICES, NORMALS, COLORS

  WavyGround(int NumPtsAlongX, int NumPtsAlongZ,
             float NumWaves, float AngOffset,     
             float CntrS, float CntrT,
             Vec3f min, Vec3f max, 
             float XZscale=1, float Yoffset=0, float Ythickness=0.1);
  WavyGround(int NumPtsAlongX, int NumPtsAlongZ,
             Vec3f min, Vec3f max, 
             float NumWaves, float AngOffset, 
             float CntrS, float CntrT);
  ~WavyGround();

  void AllocMesh(int NumPtsAlongX, int NumPtsAlongZ);
  void FreeMesh();

  void UpdateWaveExtents(Vec3f min, Vec3f max);
  void UpdateWaveParams(float NumWaves, float AngOffset, 
                        float CntrS, float CntrT);

  void DisplayNormals(float Color[3], float Scale=1);
  void UpdateMinMax();
  void Display(unsigned int Attribs=OBJ_ALL);
};

#endif
