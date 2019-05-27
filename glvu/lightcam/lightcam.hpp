//------------------------------------------------------------------------------
// File : lightcam.hpp
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
// lightcam.hpp : LIGHT-CAMERA OBJECT
//   (1) the camera viewing direction corresponds to the light direction
//       (view dir is ignored if it is a point light - only camera origin
//       is then used).
//   (2) sets the lighting params for the specified OpenGL light ID.
//       IMPORTANT: user does not set OpenGL light params directly, instead
//       they are set through the SetOpenglLight routine. This way the user
//       need only think about posing the light camera.
//   (3) This class encloses the camera
//       and the lighting params in one class. This provides
//       proper correspondence with "light" cameras and with OpenGL lights.
//   (4) Does not support directional lights, only point and spot lights.
//==========================================================================

#ifndef _LIGHTCAMERA_
#define _LIGHTCAMERA_

#include <GL/glut.h>
#include <camera.hpp>

class LightCam : public Camera
{
public:
 
  // FLAG INDICATING WHETHER THE LIGHT IS ON OR NOT.
  int IsActive;

  // FLAG INDICATING IF LIGHT IS A SPOT LIGHT OR NOT.
  int IsSpotLight;

  // SPOTLIGHT EXPONENTIAL ROLL-OFF (HAS TO BE STORED SINCE IT CANNOT BE
  // DERIVED FROM A CAMERA)
  float SpotExponent;

  // LIGHTING INTENSITY PARAMS: RGBA, BUT Alpha SHOULD PROBABLY BE 1 FOR SHADOWS
  float Ambient[4], Diffuse[4], Specular[4];
  float SpotDir[3];
  float SpotExp;
  float SpotCutoff;
  float ConstantAttenuation;
  float LinearAttenuation;
  float QuadraticAttenuation;
  
  LightCam(float ambient[4], float diffuse[4], float specular[4]);
  LightCam(Camera *cam, float ambient[4], float diffuse[4], float specular[4]);
  LightCam();

  void CalcLightGeom();
  void CalcLightGeom(float Pos[4], float SpotDirection[3],
		     float &SpotCutoffAngle);
  void CalcCamGeom(GLenum LightID, float ViewUp[3], float Ndist=-1,
		   float Fdist=-1);

  void SetLightColors(float ambient[4], float diffuse[4], float specular[4]);
  void SetLightColors(float ar, float ag, float ab, float aa,
                      float dr, float dg, float db, float da,
                      float sr, float sg, float sb, float sa);
  void SetLightAttenuation(GLenum type, float falloff);
  void SetSpotParams(float dir[3], float cutoffangle, float exponent);
  void SetOpenglLight(GLenum LightID=GL_LIGHT0);
  void DisableOpenglSpotLight(GLenum LightID);
};

#endif
