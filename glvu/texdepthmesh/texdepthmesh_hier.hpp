//------------------------------------------------------------------------------
// File : texdepthmesh_hier.hpp
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
// texdepthmesh_hier.hpp
//============================================================================

#ifndef TEXDEPTHMESH_HIER
#define TEXDEPTHMESH_HIER

#include "texdepthmesh_hier_node.hpp"

class TDM_Hierarchy
{
 private:
 
  void BuildHierarchy(TDM_node *RootNode, float MinDepthRange, int MinDim);
  void RecursiveDisplayLevel(TDM_node *node, int Level);
  void RecursiveDisplayLeaves(TDM_node *node);
  void RecursiveDisplayPtsLeaves_Adaptive(TDM_node *node, Camera *NewView);
  void RecursiveDisplayPts_AdaptiveWithVFC(TDM_node *node, Camera *NewView, Vec3f CamV[8], float CamP[6][4]);
  void RecursiveDisplayPtsLeaves(TDM_node *node, Camera *NewView);
  long RecursiveNumNodes(TDM_node *node);

 public:
 
  TexturedDepthMesh *RootTDM;
  TDM_node *Root;
  
  TDM_Hierarchy(TexturedDepthMesh *roottdm, float MinDepthRange, int MinDim);
  ~TDM_Hierarchy();
  
  long NumNodes();
  long GetByteConsumption();

  void DisplayLevel(int Level);
  void DisplayLeaves();
  void DisplayPtsLeaves_Adaptive(Camera *NewView);
  void DisplayPts_AdaptiveWithVFC(Camera *NewView);
};

#endif
