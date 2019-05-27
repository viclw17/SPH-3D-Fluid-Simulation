//------------------------------------------------------------------------------
// File : lightcamobj.hpp
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
// lightcamobj.hpp
//==========================================================================

#ifndef _LIGHTCAMERAOBJECT_
#define _LIGHTCAMERAOBJECT_

#include <object.hpp>
#include <camera.hpp>
#include "lightcam.hpp"

class LightCamObj : public Object
{
  public:

  LightCam *lCam;  // PTR TO A LIGHT CAMERA OBJECT

  LightCamObj() { lCam=NULL; }
  LightCamObj(LightCam *lcam) { lCam=lcam; }
  void UpdateMinMax();
  void Display(unsigned int Attribs);

  void XformLightCam(Vec3f &X, Vec3f &Y, Vec3f &Z, Vec3f &O, float Scale);
};
  
#endif
