//------------------------------------------------------------------------------
// File : lightcamprojector.hpp
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
// lightcamprojector.hpp : LIGHT-CAMERA with a projective texture
// See lightcam.hpp and projtex.hpp
// Mark Harris, 4/2/99
//==========================================================================

#ifndef _LIGHTCAM_PROJTEX_
#define _LIGHTCAM_PROJTEX_

#include "lightcam.hpp"
#include <objframe.hpp>

class LightCamProjector : public LightCam
{  
private:

  // The texture data
  void EnableProjTex();
  void DisableProjTex();

public:

  GLuint TexID;

  LightCamProjector(float ambient[4], float diffuse[4], float specular[4]);
  LightCamProjector(Camera *cam, float ambient[4], float diffuse[4],
		    float specular[4]);
  LightCamProjector();
  
  void DisplayObjs(ObjectFrame* *Objs, int NumObjs, unsigned int Attribs);
  void DrawObjsWithProjTex(ObjectFrame* *Objs, int NumObjs, float MapMode);
  void DrawObjsWithModulatedProjTex(ObjectFrame* *Objs, int NumObjs,
				    float Refl[3]);
  void DrawObjsWith2ndPassProjTex_MODULATE(ObjectFrame* *Objs, int NumObjs);
  void DrawObjsWith2ndPassProjTex_ADD(ObjectFrame* *Objs, int NumObjs);
  void DrawObjsWith2ndPassProjTex_MODULATE_ADD(ObjectFrame* *Objs,
					       int NumObjs,
					       float Refl[3]);
};

#endif
