//------------------------------------------------------------------------------
// File : texdepthmesh.hpp
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
// texdepthmesh.hpp
//============================================================================

#ifndef TEXDEPTHMESH
#define TEXDEPTHMESH

#include <vec3f.hpp>
#include <object.hpp>
#include <camera.hpp>
#include <GL/glut.h>

class TexturedDepthMesh : public Camera
{
  private:

  GLuint DisplayListID, tID, TexObjID;
  // ALL IN TERMS OF DISTANCE FROM EYE-PLANE (LIKE NEAR/FAR)
  float MinDepth,MaxDepth,AvDepth;  
  int deleteTexFlag;
  int deferDeleteTex; 

  void Init();

  void EnableProjTex();
  void DisableProjTex();

  void Begin_DisplayList();
  void End_DisplayList();
  void Begin_ProjTexObj();
  void End_ProjTexObj();
  void Begin_DisplayState();
  void End_DisplayState();
  void Begin_DrawSetup();
  void End_DrawSetup();

  inline float LinearizeZ(float DepthZ, float NearDist, float FarDist);
  void CalcMinMaxAvDepths();
  //  void PackToMinMax();
  Vec3f CalcRefPt();
  void CalcStepSizes(Vec3f NewCOP, float *Xstep, float *Ystep);
  
  void SaveColorAndDepth(int realloc = 1);

  public:
    
  int UseDisplayLists, UseProjTex;

  // nRowsXnCols ARRAYS COLOR AND DEPTH VALUES
  unsigned char *Color;
  float *Depth;
  int nCols, nRows;        // RESOLUTION OF DEPTH-TEXTURE IMAGE
  int allocPixels;         // NUMBER OF PIXELS ALLOCED IN DEPTH-TEX IMAGE 
  enum { REUSE, REALLOC }; // CONSTANTS FOR SNAPSHOT REALLOC PARAM

  // CONSTRUCTORS: MAP CAN BE CREATED EXPLICITLY FROM A CAMERA
  TexturedDepthMesh();
  TexturedDepthMesh(Camera *cam);
  TexturedDepthMesh(Object *Obj, Camera *Cam, int NumCols, int NumRows);
  TexturedDepthMesh(char *FileName);
  ~TexturedDepthMesh();

  void Write(char *FileName);
  long GetByteConsumption();

  // RECAPTURE COLOR AND DEPTH FROM CAMERA
  void Snapshot(Camera *Cam = NULL, int realloc = 1);
  void Snapshot(Object *Obj, Camera *Cam, int NumCols, int NumRows,
		int realloc = 1);

  // SPECIFY EXTERNALLY ALLOCATED COLOR AND DEPTH BUFFERS
  void SetColorAndDepth(unsigned char *ColorBuf, float *DepthBuf, int cols,
			int rows);

  // DEFER DELETION OF OLD TEXTURES UNTIL ACTUAL GEN OF NEW ONE?
  void SetDeferTexDeletion(int yesNo) { deferDeleteTex = yesNo; }
  
  // POINT-BASED DISPLAY ROUTINES (ALL POINTS)
  void DisplayAsPts();
  void DisplayAsPtsWithColor();

  // POINT-BASED DISPLAY ROUTINES (UNIFORM STEPSIZING : INTEGER STEP)
  void DisplayAsPts(int StepSize);
  void DisplayAsPtsWithColor(int StepSize);

  // POINT-BASED DISPLAY ROUTINES (NONUNIFORM STEPSIZING : FLOAT STEP)
  void DisplayAsPts(float Xstep, float Ystep);
  void DisplayAsPtsWithColor(float Xstep, float Ystep);

  // POINT-BASED DISPLAY ROUTINES (ADAPTIVE STEPSIZING)
  void DisplayAsPts_Adaptive(Camera *NewView);
  void DisplayAsPtsWithColor_Adaptive(Camera *NewView);

  // MESH-BASED DISPLAY ROUTINES (ALL POINTS)
  void DisplayAsMesh();
  void DisplayAsMeshWithColor();

  // MESH-BASED DISPLAY ROUTINES (UNIFORM STEPSIZING : INTEGER STEP)
  void DisplayAsMesh(int StepSize);
  void DisplayAsMeshWithColor(int StepSize);

  // MESH-BASED DISPLAY ROUTINES (NONUNIFORM STEPSIZING BASED RESAMPLING :
  // INTEGER)
  void DisplayAsMesh(int NumX, int NumY);

  void DisplayPtsWithDepthOfField(float FocusDist, float ApertureSize,
				  int StepSize);
};

#endif
