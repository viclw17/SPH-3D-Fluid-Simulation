//------------------------------------------------------------------------------
// File : vrmltri.hpp
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
// vrmltri.hpp
//============================================================================

#ifndef VRMLTRI
#define VRMLTRI

// #define USE_VERTEX_NORMALS  // OTHERWISE, PER FACE NORMALS ONLY

#include <vec3f.hpp>

//----------------------------------------------------------------------------
// TRIANGLE THAT "SHARES VERTICES" (VERTS ARE PTRS INTO SHARED VERTEX ARRAY)
//----------------------------------------------------------------------------
struct SharedVertTri
{
  int iA,iB,iC;           // INDICES INTO SHARED VERTEX ARRAY
  Vec3f N;                // TRIANGLE NORMAL
};


//----------------------------------------------------------------------------
// A SHARED VERTEX WITH A NORMAL
//----------------------------------------------------------------------------
struct NormVert
{
  Vec3f V;
  #ifdef USE_VERTEX_NORMALS
    Vec3f N;
  #endif
};


//----------------------------------------------------------------------------
// TRIANGLE MODEL COMPOSED OF TRIANGLES W/ SHARED VERTICES (w/ VERTEX NORMALS)
//----------------------------------------------------------------------------
class VrmlTri
{
 private:
  void AddVertex(Vec3f V);
  void AddTri(int iA, int iB, int iC);
  void CompressArrays();

 public:

  NormVert *Verts;     // SHARED VERTEX ARRAY (TRIS COMPOSED OF INDICES INTO THIS)
  int NumVerts, NumVertsAlloced;
  SharedVertTri *Tris; // ARRAY OF TRIS W/ SHARED VERTS
  int NumTris, NumTrisAlloced;

  Vec3f Min,Max;       // MIN AND MAX EXTENTS OF THE MODEL
  Vec3f Color;         // MODEL COLOR (ONE PER MODEL)

  VrmlTri();
  ~VrmlTri();
  void ReadVRML(const char *FileName, float Scale=1); // ENTIRE VRML FILE IS A SINGLE TRI OBJECT
  void ReadFromVRML(FILE *fp, float Scale=1);   // JUST A SINGLE OBJECT FROM AN ALREADY OPEN VRML FILE
  void ReadFromTri(const char *FileName, float Scale=1);
  void CalcAllNormals();
  void CalcFaceNormals();
  #ifdef USE_VERTEX_NORMALS
    void CalcVertexNormals();
  #endif
  void CalcExtents();
  void PrintToTri(const char* FileName);
  void PrintToVRML(const char* FileName);
  void PrintObjToVRML(FILE *fp);
  void Display(unsigned int Attribs);
};

#endif
