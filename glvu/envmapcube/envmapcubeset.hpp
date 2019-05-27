//------------------------------------------------------------------------------
// File : envmapcubeset.hpp
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
// envmapcubeset.hpp
//============================================================================

#ifndef _ENVMAPCUBESET_
#define _ENVMAPCUBESET_

#include "envmapcube.hpp"

class EnvMapCubeSet
{
 private:
 
   void DoubleArray();
   void PackArray();
   void DisplaySet(EnvMapCube* *emcs, int numemcs,
                   int UseMesh=1, int StepSize=1, int UseProjTex=0, int UseDisplayLists=0);

 public:
 
  EnvMapCube* *EMCs;
  int NumEMCs, NumEMCsAlloced;
  
  EnvMapCubeSet();
  ~EnvMapCubeSet();
  void Begin();
  void End();
  void AddEMC(Object *Obj, Vec3f Cntr, float HalfDim, int N);
  void AddEMC(EnvMapCube *EMC);
  void DisplayAll(int UseMesh=1, int StepSize=1, int UseProjTex=0, int UseDisplayLists=0);  
  void DisplayAll(Camera *Cam, int UseMesh=1, int StepSize=1, int UseProjTex=0, int UseDisplayLists=0);  
  void DisplayAllCubes(float Color[3]);
  void DisplaySet_ClosestPos(Camera *Cam, int NumToUse=1, int UseMesh=1, int StepSize=1, int UseProjTex=0, int UseDisplayLists=0, int VisCullOn=1);
};

#endif
