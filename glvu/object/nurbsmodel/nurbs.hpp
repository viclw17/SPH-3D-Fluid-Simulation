//------------------------------------------------------------------------------
// File : nurbs.hpp
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

//===========================================================================
// nurbs.hpp
//===========================================================================

#ifndef _NURBS_
#define _NURBS_

#include <stdio.h>
#include <GL/glut.h>

typedef float Vec3fv[3];
typedef float Vec4fv[4];


#define NURBS_SURF 1              // TYPES OF SURFACES
#define BEZIER_SURF 2
#define PWL_TRIM 1                // TYPES OF TRIMMING CURVES
#define NURBS_TRIM 2


// A SINGLE SEGMENT OF A NURBS TRIMMING CURVE CAN BE PIECEWISE-LINEAR OR NURBS
class NURBStrimSeg
{
 public:

  int iAdjPatch;                  // INDEX OF ADJACENT PATCH (-1 if unknown)
  int iAdjTrim;                   // INDEX OF ADJ TRIM CURVE (-1 if unknown)
  int Type;                       // TRIM TYPE: 2 IF NURBS, 1 IF PW-LINEAR
  Vec3fv* CtrlPts;                // 3D CTRL POINTS (GENERAL FOR BOTH TYPES)
  int NumCtrlPts;                 // # OF CTRL PTS IN CTRL-PT ARRAY

  // Type=2: NURBS SPECIFIC TRIMMING CURVE DATA
  int Order;                      // ORDER OF TRIMMING CURVE
  float* Knots;                   // ARRAY OF KNOTS
  int NumKnots;                   // TOTAL # OF KNOTS IN KNOT ARRAY

  NURBStrimSeg() {}
  ~NURBStrimSeg()
  {
    delete[] CtrlPts;
    delete[] Knots;
  }
  void ReadInTrimSeg(FILE* fp, int SurfaceType=NURBS_SURF);
  void Display(GLUnurbsObj* pNurbs);
  void Print();
};


// A TRIM LOOP IS COMPOSED OF MULTIPLE TRIM SEGS THAT MUST FORM A CLOSED LOOP
class NURBStrimLoop
{
 public:
  NURBStrimSeg* TrimSegs;        // ARRAY OF TRIMMING CURVE SEGMENTS
  int NumSegsPerLoop;            // # OF CURVE SEGMENTS IN THE LOOP

  NURBStrimLoop();
  ~NURBStrimLoop();
  void ReadInTrimLoop(FILE* fp, int SurfaceType=NURBS_SURF);
  void Display(GLUnurbsObj* pNurbs);
  void Print();
};


class NURBSsurface
{
 public:

  int Uorder, Vorder;             // U AND V ORDER OF SURFACE
  int NumKnotsU, NumKnotsV;       // NUMBER OF KNOTS IN U AND V
  float *Uknots, *Vknots;         // ARRAYS OF KNOTS IN U AND V
  int NumCtrlPtsU, NumCtrlPtsV;   // NUMBER OF CTRL PTS IN U AND V
  int NumCtrlPts;                 // TOTAL NUMBER OF CTRL PTS
  Vec4fv *CtrlPts;                // ARRAY OF CTRL POINTS
  unsigned char Color[3];         // COLOR OF SURFACE

  NURBStrimLoop* TrimLoops;       // ARRAY OF TRIMMING CURVES
  int NumTrimLoops;               // NUMBER OF TRIMMING CURVES

  Vec3fv Min, Max;                // AXIS-ALIGNED BOUNDING BOX EXTENTS

  NURBSsurface();
  ~NURBSsurface();

  void Display_NO_ATTRIBS(GLUnurbsObj* pNurbs);
  void Display_COLORS(GLUnurbsObj* pNurbs);

  void ReadInSurface(FILE* fp, int SurfaceType=NURBS_SURF);
  void CalcAABB();
  void Print();
};


class NURBSobj
{
  public:

    GLUnurbsObj* pNurbs;           // OPENGL NURBS RENDERER

    NURBSsurface* NurbsSurfs;      // ARRAY OF NURBS SURFACES
    int NumSurfs;                  // NUMBER OF NURBS SURFACES IN OBJECT

    Vec3fv Min, Max;               // AXIS-ALIGNED BOUNDING BOX EXTENTS
    
    NURBSobj();
    ~NURBSobj();

    void Display_NO_ATTRIBS();
    void Display_COLORS();
    void Display_NORMALS();
    void Display_COLORS_NORMALS();

    void ReadInNurbsObject(const char* FileName, int SurfaceType=NURBS_SURF);
    void InitNurbsObject();
    void CalcAABB();
};

#endif
