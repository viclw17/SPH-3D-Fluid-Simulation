//------------------------------------------------------------------------------
// File : trimodel.hpp
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
// trimodel.hpp
//============================================================================

#ifndef _TRIMODEL_
#define _TRIMODEL_

#include <object.hpp>

struct Tri
{
  Vec3f A,B,C, N;           // THREE VERTICES (CCW, RIGHT-HAND RULE), NORMAL
  unsigned char Color[3];   // RED, GREEN, BLUE
};

class TriModel : public Object
{
 public:

  Tri *Tris;
  int NumTris, NumTrisAlloced;

  TriModel();
  TriModel(const char *FileName, int IsBinaryFile=0, float Scale=1);
  TriModel(const char *FileName, unsigned char r, unsigned char g, unsigned char b, float Scale=1);
  ~TriModel();

  void Read(const char *FileName, unsigned char r, unsigned char g, unsigned char b, float Scale=1);
  void Read(const char *FileName, float Scale=1);
  void Write(const char *FileName);

  void ReadBinary(const char *FileName);
  void WriteBinary(const char *FileName);

  void BeginModel();
  void AddTri(Vec3f A, Vec3f B, Vec3f C, Vec3f Color);
  void EndModel();

  void CompressArrays();  // ALL 3 CALLED BY EndModel()
  void CalcNormals();
  void ReverseNormals();

  void UpdateMinMax();
  void Display(unsigned int Attribs=OBJ_ALL);

  void GetTris(float* &tris, int &numTris);  // get array of floats
  void GetTris(double* &tris, int &numTris); // get array of doubles
  void GetTriData(float* &data, int &numTris, int &numValuesPerTri,
                  unsigned int Attribs=OBJ_NORMALS);
  int GetNumTris();
};

#endif
