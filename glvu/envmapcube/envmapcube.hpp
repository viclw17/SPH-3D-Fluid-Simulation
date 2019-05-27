//------------------------------------------------------------------------------
// File : envmapcube.hpp
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
// envmapcube.hpp : environment-mapped cube (with depth)
//============================================================================

#ifndef ENVMAPCUBE
#define ENVMAPCUBE

#include <object.hpp>
#include <vec3f.hpp>
#include <texdepthmesh.hpp>

// THESE REPRESENT THE BITMASKS FOR EACH FACE OF THE CUBE:
// POSITIVE X, NEGATIVE X, . . .
#ifndef ENVMAPHEMICUBE
enum { ALLFACES=255, PXFACE=1, NXFACE=2, PYFACE=4, NYFACE=8, PZFACE=16, NZFACE=32 };
#endif

class EnvMapCube
{
  private:
  
  void CreateFaceTDMs(Object *Obj);
  void AdjustCameraForBoundaryStitching(Camera *Cam);
  void PrintBits(unsigned int x);

  public:
    
  // SIX FACES WITH NxN COLOR AND DEPTH IMAGES (neg/pos X,Y,Z faces)
  TexturedDepthMesh *TDMs[6];  // PosX,NegX,PosY,NegY,PosZ,NegZ faces
  int N;

  // BOX CENTER AND HALF SIDE-LENGTH
  Vec3f Cntr;
  float HalfDim;

  unsigned int VisibleFaceMask;

  // CONSTRUCTORS: MAP CAN BE CREATED EXPLICITLY FROM A CAMERA
  EnvMapCube(Object *Obj, Vec3f cntr, float halfdim, int n);
  EnvMapCube(char *FileName);       // READ MAP FROM A FILE
  ~EnvMapCube();

  void FindVisibleCubeFaces(Camera *Cam);
  void SetAllFacesVisible();

  // WRITE THE MAP TO A FILE WITH: VIEWING INFO, DIM, AND RGBD 32-BIT FORMAT
  void Write(char *FileName);

  void DisplayCube(float Color[3]);
  void Display(int UseMesh=1, int StepSize=1, int UseProjTex=0, int UseDisplayLists=0);
};

#endif
