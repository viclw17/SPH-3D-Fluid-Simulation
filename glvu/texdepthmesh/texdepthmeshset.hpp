//------------------------------------------------------------------------------
// File : texdepthmeshset.hpp
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
// texdepthmeshset.hpp
//============================================================================

#ifndef _TEXDEPTHMESHSET_
#define _TEXDEPTHMESHSET_

#include "texdepthmesh.hpp"

class TexturedDepthMeshSet
{
 private:
 
   void DoubleArray();
   void PackArray();
   void DisplaySet(TexturedDepthMesh* *tdms, int numtdms,
                   int UseMesh=1, int StepSize=1, int UseProjTex=0, int UseDisplayLists=0);

 public:
 
  TexturedDepthMesh* *TDMs;
  int NumTDMs, NumTDMsAlloced;
  
  TexturedDepthMeshSet();
  ~TexturedDepthMeshSet();
  void Begin();
  void End();
  void AddTDM(Object *Obj, Camera *Cam, int NumCols, int NumRows);
  void AddTDM(TexturedDepthMesh *TDM);

  void DisplayAll(int UseMesh=1, int StepSize=1, int UseProjTex=0, int UseDisplayLists=0);
  void DisplayAllCams();

  void Display_ClosestPos(Camera *Cam, int UseMesh=1, int StepSize=1, int UseProjTex=0, int UseDisplayLists=0);
  void Display_ClosestDir(Camera *Cam, int UseMesh=1, int StepSize=1, int UseProjTex=0, int UseDisplayLists=0);

  void DisplaySet_ClosestPos(Camera *Cam, int NumToUse, int UseMesh=1, int StepSize=1, int UseProjTex=0, int UseDisplayLists=0);
  void DisplaySet_ClosestDir(Camera *Cam, int NumToUse, int UseMesh=1, int StepSize=1, int UseProjTex=0, int UseDisplayLists=0);
  void DisplaySet_ClosestDirPos(Camera *Cam, int NumToUse, int UseMesh=1, int StepSize=1, int UseProjTex=0, int UseDisplayLists=0);
  void DisplaySet_ClosestDirPos(Camera *Cam, int NumToUse, float DirWeight, int UseMesh=1, int StepSize=1, int UseProjTex=0, int UseDisplayLists=0);
};

#endif
