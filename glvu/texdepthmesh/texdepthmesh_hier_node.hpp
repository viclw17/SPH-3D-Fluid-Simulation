//------------------------------------------------------------------------------
// File : texdepthmesh_hier_node.hpp
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
// texdepthmesh_hier_node.hpp
//============================================================================

#ifndef TEXDEPTHMESH_HIER_NODE
#define TEXDEPTHMESH_HIER_NODE

#include "texdepthmesh.hpp"

class TDM_node
{
 private:
 
  TexturedDepthMesh *RootTDM;

  int L,R,B,T;           // INCLUSIVE PIXEL WINDOW BOUNDARIES OF ROOT TDM BUFFERS
  
  float MinDepth,MaxDepth;  // ALL IN TERMS OF DISTANCE FROM EYE-PLANE (LIKE NEAR/FAR)
  
  float LinearizeZ(float DepthZ, float NearDist, float FarDist)
  { return (NearDist*FarDist) / ( FarDist - DepthZ*(FarDist-NearDist) ); }

  void CalcMinMaxDepths();
  Vec3f CalcRefPt();

 public:

  TDM_node *Child[4];  // TL,TR,BL,BR;

  TDM_node(TexturedDepthMesh *roottdm, int l, int r, int b, int t);
  ~TDM_node();

  int Subdivide(float MinDepthRange, int MinDim);
  int IsLeaf() { return( Child[0]==0 && Child[1]==0 && Child[2]==0 && Child[3]==0 ); }
  int nCols() { return(R-L+1); }
  int nRows() { return(T-B+1); }
  void WinBoundsLRBT(float Win[4]);

  void CalcVerts(Vec3f V[8]);
  void CalcPlanes(Vec3f V[8], float P[][4]);

  void DisplayBox(Vec3f V[8], float r, float g, float b);

  void CalcStepSizes(Vec3f NewCOP, float *Xstep, float *Ystep);

  void DisplayNode();
  void DisplayAsPtsWithColor(float Xstep, float Ystep);
  void DisplayAsPtsWithColor_WithPtMag(float Xstep, float Ystep);
  void DisplayAsPtsWithColor_Adaptive(Camera *NewView, int UsePtMag=1);
};

#endif

