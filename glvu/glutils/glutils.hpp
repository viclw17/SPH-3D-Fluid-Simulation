//------------------------------------------------------------------------------
// File : glutils.hpp
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
// glutils.cpp : OpenGL handy rendering utilities
//============================================================================
#ifndef GL_UTILS_HPP
#define GL_UTILS_HPP
#include <GL/glut.h>
#include <stdio.h>

void DisplayMinMaxBox(float Min[3], float Max[3], 
                      float r=1, float g=1, float b=1, float LineWidth=1);

void GLerror(char *msg);


// Convert depth buffer values into euclidean Z
inline float LinearizeZ(float DepthZ, float NearDist, float FarDist)
{
  return (NearDist*FarDist) / ( FarDist - DepthZ*(FarDist-NearDist) ); 
}

// Convert euclidean Z into depth buffer values
inline float DepthifyZ(float LinearZ, float NearDist, float FarDist)
{
  return ((FarDist*(LinearZ-NearDist))/ ( LinearZ*(FarDist-NearDist) ) ); 
}
#endif
