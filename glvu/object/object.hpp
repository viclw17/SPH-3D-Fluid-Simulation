//------------------------------------------------------------------------------
// File : object.hpp
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

//==========================================================================
// object.hpp : just a container class for all types of objects.
//   All objects have to implement these basic routines and should
//   be subclasses of "Object". The following must be provided for each object:
//   (1) the min and max extents in object-space only (local modeling coords)
//   (2) an update routine for the min/max extents
//   (3) a general display routine (all materials, textures, lighting, etc.
//       handled in object drawing routine)
//   (4) a generalized display routine is required that will support all possible
//       display attributes for vertices. An unsigned integer bitmask is sent
//       to the routine that contains the ORing of all desired options in the
//       display. By default, all attribs are displayed (OBJ_ALL). The user
//       must provide implementations for all combinations:
//       switch (Attribs)
//       {
//        case OBJ_NONE : // ONLY MAKE glVertex CALLS
//         break;
//        case OBJ_ALL : // DISPLAY WITH ALL VERTEX ATTRIBUTES
//         break;
//        case OBJ_COLORS : // VERTEX COLORS ONLY
//         break;
//        case OBJ_NORMALS : // VERTEX NORMALS ONLY
//         break;
//        case OBJ_TEXCOORDS : // VERTEX TEX-COORDS ONLY
//         break;
//        case (OBJ_COLORS | OBJ_NORMALS) : // VERTEX COLORS AND NORMALS ONLY
//         break;
//        case (OBJ_COLORS | OBJ_TEXCOORDS) : // VERTEX COLORS AND TEX-COORDS ONLY
//         break;
//        case (OBJ_NORMALS | OBJ_TEXCOORDS) : // VERTEX NORMALS AND TEX-COORDS ONLY
//         break;
//       };
// These attributes need not be applied to each vertex in the display routine;
// we need only worry about not making any associated state changes to Attribs
// that are not called for. For example, if the user does not ask for OBJ_TEX_COORDS,
// then all associated state must also not be changed in the display routine:
// texture bindings, texture enabling, etc. Also, some attribs may not apply to
// certain objects (obj may not have a texture), so we must make unset the bits
// in the bitmask corresponding to those options (Attribs &= (~OBJ_*)) before
// going into the switch statement.
//==========================================================================

#ifndef _OBJECT_
#define _OBJECT_

#include <vec3f.hpp>

// OBJECT DISPLAY ATTRIBUTES; OR TOGETHER DESIRED COMBINATIONS
enum {
  OBJ_NONE        = 0x0,
  OBJ_COLORS      = 0x1,
  OBJ_NORMALS     = 0x2,
  OBJ_TEXCOORDS   = 0x4,
  OBJ_DYN_NORMALS = 0x8,
  OBJ_ALL = (OBJ_COLORS | OBJ_NORMALS | OBJ_TEXCOORDS)
};

class Object
{
  public:
    Vec3f Min, Max;  // OBJECT EXTENTS IN OBJECT COORDS (AABB)

    void DrawAABB(float r=0, float g=0, float b=1);

    // UPDATE MIN/MAX IN OBJECT COORDS
    virtual void UpdateMinMax() = 0;        

    // FULL DISPLAY ROUTINE
    virtual void Display(unsigned int Attribs=OBJ_ALL) = 0;

    // RETURNS AN ARRAY OF TRIS (FLAT ARRAY OF FLOATS,
    // 3 VERTICES/TRI, 3 FLOATS/VERTEX, VERTICES IN COUNTER-CLOCKWISE ORDER
    // IF Tris==NULL AFTER CALLING, THEN UNABLE TO GET TRIS. ALLOCATION OF Tris IS DONE
    // WITHIN GetTris (just declare "float *Tris" and pass in "Tris") PROVIDED
    // TRIS==NULL WHEN PASSED IN; OTHERWISE, ALLOCATION IS NOT PERFORMED (MAY BE
    // PRE-ALLOCED BY THE USER FOR PACKING LARGER TRI ARRAYS).
    // ALSO RETURNS NumTris, WHICH WILL BE ZERO IF UNABLE TO GET TRIS.
    // A SEPARATE ROUTINE IS PROVIDED TO JUST GET THE # OF TRIS
    virtual void GetTris(float* &tris, int &numTris) { tris=NULL; numTris=0; }
    virtual void GetTris(double* &tris, int &numTris) { tris=NULL; numTris=0; }  

    // RETURNS AN ARRAY OF PER-FACE DATA.  USES SAME ATTRIBS (defined above) AS
    // Display().  ALLOCATES MEMORY AS DOES GetTris(), ABOVE.
    virtual void GetTriData(float* &data, int &numTris, int &numValuesPerTri,
                            unsigned int Attribs = OBJ_NORMALS) 
                            { data = NULL; numTris = 0; numValuesPerTri = 0; }
    virtual int GetNumTris() { return(0); }

    virtual ~Object() {}
};

#endif
