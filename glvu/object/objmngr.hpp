//------------------------------------------------------------------------------
// File : objmngr.hpp
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
// objmngr.hpp : object manager class definition (integrated w/ Object class).
//   The purpose of this class it to manage a list (dynamic array) of
//   objects in a scene for display and manipulation. The following routines
//   are provided:
//   1) a global OpenGL display routine (display all objects).
//   2) Object manipulation management routines:
//      a) used to interpret mouse clicks and movements (NOT A MOUSE EVENT HANDLER)
//      b) handles object selection
//      c) handles object manipulation (trackball, translate, etc.).
//      d) objects are manipulated as OBBs only. The object's display
//         routine handles proper orientation of the actual object.
//   3) handles insertion and deletion of new objects of various types.
//   4) handles instancing of objects automatically.
//==========================================================================

#ifndef _OBJECTMANAGER_
#define _OBJECTMANAGER_

#include <objframe.hpp>   // OBJECT INSTANCE TYPE (COORD FRAME)
#include <time.h>         // FOR TIMED OBJ ANIMATION PLAYBACK
#include <camera.hpp>
#include <stopwatch.hpp>

class ObjectManager : public Object
{
  private:

    int RecordingOn, PlaybackOn;      // OBJ INSTANCE RECORDING/PLAYBACK FLAGS
    FILE *RecordPlaybackFP;           // RECORDING/PLAYBACK FILE POINTER

    void AddObjectFrame(Object *Obj);
    void DeleteObjectFrame(int iObjInstances);

    clock_t PlaybackTime;             // FOR OBJ ANIMATION PLAYBACK TIMING
    Stopwatch watch;                  // For Physics timing
    float markedTime;
  
  public:

    int ObjectDrawingOn;              // GLOBAL DRAWING OF OBJECTS FLAG
    int SelectionBoxDrawingOn;        // DRAWING OF BOUNDING BOXES AROUND SELECTED OBJS

    // OBJECT INSTANCE ARRAY
    ObjectFrame* *ObjInstances;       // ARRAY OF PTRS TO INSTANCED OBJECT'S COORD FRAMES
    int NumObjInstances, NumObjInstancesAlloced;
    int *IsSelected;                  // SELECTION FLAGS FOR ALL OBJ INSTANCES

    // MAIN OBJECT LIST (INSTANCES HAVE PTRS TO OBJECTS IN HERE)
    Object* *Objects;                 // ARRAY OF PTRS TO OBJECTS (OBJS ARE ALLOCED BY USER)
    int NumObjects, NumObjectsAlloced;

    ObjectManager();
    ~ObjectManager();

    void AddObject(Object *Obj);      // USER ROUTINES TO ADD AND DELETE INSTANCES
    void DeleteObject(int iObjInstance);
    void CopyObject(int iObjInstance);

    void UpdatePathRecPlayback();     // CALLED AT BEGINNING OF EVERY FRAME FOR REC/PLAYBACK OF OBJS

    virtual void UpdateMinMax();
    virtual void Display(unsigned int Attribs=OBJ_ALL);
    void ToggleObjectDrawing();
    void ToggleSelectionBoxDrawing();

    int SelectObject(Vec3f &Start, Vec3f &Dir, Vec3f *HitPt=NULL, float *HitDist=NULL);
    void Select(int iObj);
    int IsAlreadySelected(int iObj);
    void DeselectAll();
    void ToggleSelect(int iObj);

    void RotateSelected(float Ang, Vec3f &Axis);
    void TranslateSelected(Vec3f &T);
    void ScaleSelected(float S);
    void DeleteSelected();
    void CopySelected();

    Vec3f ObjCntr(int iObj);

    void StartRecording(char *FileName);
    void EndRecording();
    void StartPlayback(char *FileName);
    void EndPlayback();
    void StopRecordingPlayback();

    int ReadInstancesFromFile(FILE *fp);
    void WriteInstancesToFile(FILE *fp);

    void GetMinMax(Vec3f &Min, Vec3f &Max);

    // physics stuff
    void ResetTime() { markedTime = 0; watch.Reset(); }
    void ApplyGravity(int whichObject);
    void UpdatePosition(int whichObject);
    void UpdateAllPositions();
    bool CollisionTest(GLfloat *depth, const GLint vp[4],
			GLdouble modelview[16], GLdouble projection[16], 
			int whichObject, Vec3f &collisionPt, 
			const GLint Buffer=GL_BACK);
  

};

#endif

