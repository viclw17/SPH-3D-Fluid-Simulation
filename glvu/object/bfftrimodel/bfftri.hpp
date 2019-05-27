//------------------------------------------------------------------------------
// File : bfftri.hpp
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
// bfftri.hpp
//============================================================================

#ifndef BFFTRI
#define BFFTRI

// #define USE_VERTEX_NORMALS  // OTHERWISE, PER FACE NORMALS ONLY

#include <vec3f.hpp>
#include <vec2f.hpp>

//----------------------------------------------------------------------------
// TRIANGLE THAT "SHARES VERTICES" (VERTS ARE PTRS INTO SHARED VERTEX ARRAY)
//----------------------------------------------------------------------------
struct VertTri
{
  int iA,iB,iC;           // INDICES INTO VERTEX ARRAY
  Vec3f N;                // TRIANGLE NORMAL
  int TexId;              // TEXTURE ID
  int ObjId;              // OBJECT ID
};


//----------------------------------------------------------------------------
// A VERTEX WITH NORMAL
//----------------------------------------------------------------------------
struct BffNormVert
{
  Vec3f V;  // XYZ
  #ifdef USE_VERTEX_NORMALS
    Vec3f N;
  #endif
  Vec3f C;  // RGB
  Vec2f UV; // TEX COORDS
};


//----------------------------------------------------------------------------
// TRIANGLE MODEL COMPOSED OF TRIANGLES W/ VERTICES (w/ VERTEX NORMALS)
//----------------------------------------------------------------------------
class BffTri
{
 private:
  int AddVertex(
     float x, float y, float z,
     float r, float g, float b,
     float u, float v
  );
  void AddTri(int TexId, int ObjId, int iA, int iB, int iC);
  void AddTexture(char *fileName);
  void CompressArrays();

 public:

  BffNormVert *Verts;     // VERTEX ARRAY (TRIS & QUADS COMPOSED OF INDICES INTO THIS)
  VertTri *Tris;       // ARRAY OF TRIS
  unsigned int *Texs;       // ARRAY OF TEXTURE IDS
  int NumVerts, NumVertsAlloced;
  int NumTris, NumTrisAlloced;
  int NumTexs, NumTexsAlloced;

  Vec3f Min,Max;       // MIN AND MAX EXTENTS OF THE MODEL
  Vec3f Color;         // MODEL COLOR (ONE PER MODEL)

  BffTri();
  ~BffTri();
  void ReadBFF(const char *FileName, float Scale=1); // ENTIRE BFF FILE IS A SINGLE TRI OBJECT
  void ReadFromBFF(FILE *fp, float Scale);
  void CalcAllNormals();
  void CalcFaceNormals();
  #ifdef USE_VERTEX_NORMALS
    void CalcVertexNormals();
  #endif
  void CalcExtents();
  void PrintToTri(const char* FileName);
  void PrintToBFF(const char* FileName);
  void PrintObjToBFF(FILE *fp);
  void Display(unsigned int Attribs);
};

#endif
