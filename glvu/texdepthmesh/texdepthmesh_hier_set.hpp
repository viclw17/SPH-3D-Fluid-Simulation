//------------------------------------------------------------------------------
// File : texdepthmesh_hier_set.hpp
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
// texdepthmesh_hier_set.hpp
//============================================================================

#ifndef _TEXDEPTHMESHHIERSET_
#define _TEXDEPTHMESHHIERSET_

#include "texdepthmesh.hpp"
#include "texdepthmesh_hier.hpp"

class TDM_HierarchySet
{
 private:
 
   void DoubleArray();
   void PackArray();
   void DisplaySet(TDM_Hierarchy* *tdmhs, int numtdms, Camera *Cam);
   void DisplaySelectedCameras( TDM_Hierarchy* *tdms, int numtdms );

 public:
 
  TexturedDepthMesh* *TDMs;
  TDM_Hierarchy* *TDMHs;
  int NumTDMs, NumTDMsAlloced;
  
  TDM_HierarchySet();
  ~TDM_HierarchySet();
  void Begin();
  void End();
  void AddTDM(Object *Obj, Camera *Cam, int NumCols, int NumRows, float MinDepthRange, int MinDim);
  void AddTDM(TexturedDepthMesh *TDM, float MinDepthRange, int MinDim);

  long GetByteConsumption();

  void DisplayAll(Camera *Cam);
  void DisplayAllCams();

  void Display_ClosestPos(Camera *Cam);
  void Display_ClosestDir(Camera *Cam);

  void DisplaySet_ClosestPos(Camera *Cam, int NumToUse);
  void DisplaySet_ClosestDir(Camera *Cam, int NumToUse);
  void DisplaySet_ClosestDirPos(Camera *Cam, int NumToUse);
  void DisplaySet_ClosestDirPos(Camera *Cam, int NumToUse, float DirWeight);
};

#endif
