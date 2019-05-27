//------------------------------------------------------------------------------
// File : objframe.hpp
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
// objframe.hpp : moving object coordinate frame
//   All objects within this framework are assumed to be positioned within
//   the world-space with the given object coordinate frame (axes, origin,
//   uniform scale). The Obj points to an object in object-space. The frame
//   creates an instance of the object pointed to.
//==========================================================================

#ifndef _OBJECT_FRAME_
#define _OBJECT_FRAME_

#include <GL/glut.h>
#include <object.hpp>

class ObjectFrame
{
  private:

    GLuint DisplayListID;

    // Hierarchy
    ObjectFrame *parent;      // pointer to parent frame
    ObjectFrame *child;       // pointer to head of a list of children
    ObjectFrame *leftSibling; // left in a doubly linked sibling list
    ObjectFrame *rightSibling;// right in a doubly linked sibling list

    int numChildren;
    float mass;
    float units;      // units of object in fraction of meters
    bool moving;      // set when there is an applied force 
    Vec3f velocity;
    Vec3f totalForce; // total force currently applied to object
    void RecursiveDisplay(unsigned int Attribs=OBJ_ALL, int UseDisplayLists=0);
  public:

    Vec3f X,Y,Z,O;  // OBJECT COORDINATE SYSTEM FRAME (AXES,ORIGIN)
    float Scale;    // UNIFORM OBJECT SCALING

    Object *Obj;    // PTR TO OBJECT (TO BE ABLE TO EASILY INSTANCE OBJECTS)

    ObjectFrame(Object *ObjPtr);

    void GetOBBverts(Vec3f *V);
    void GetBoundingSphere(Vec3f *Cntr, float *Rad);

    void DrawOBB(float r=0, float g=0, float b=1);
    void DrawBoundingSphere(float r, float g, float b);
    void DrawAxes(float LineWidth=1, float scale=1);

    int RayIsect(Vec3f &Start, Vec3f &Dir, float &InT, float &OutT);

    void TranslateObj(Vec3f T);
    void ScaleObj(float scale);
    void RotateObj(float Ang, Vec3f Axis);
    void RotateObjAboutMinMaxCntr(float Ang, Vec3f Axis);

    void ScaleObj(float scale, Vec3f Pt);
    void RotateObj(float Ang, Vec3f Axis, Vec3f Pt);
    
    Vec3f objMinMaxCntr();
    Vec3f worldMinMaxCntr();

    void LoadIdentity();
    void Xform(float M[16]);

    float* GetObj2WorldXform(float *M);
    float* GetWorld2ObjXform(float *M);

    float* GetRotationMatrix(float *M, float DegAng, Vec3f Axis);

    void UpdateMinMax() { Obj->UpdateMinMax(); }
    void GetWorldMinMax(Vec3f &Min, Vec3f &Max);

    void Display(unsigned int Attribs=OBJ_ALL, int UseDisplayLists=0);
    void FastDisplay(int UseDisplayLists=0) { Display(OBJ_NONE,UseDisplayLists); }

    void WriteToFile(FILE *fp);
    int ReadFromFile(FILE *fp);

    void GetTris(float* &Tris, int &NumTris);
    int GetNumTris();

    // Hierarchical stuff
    void AttachChild(ObjectFrame *newChild);
    void DetachChild(ObjectFrame *detached);

    // heirarchy navigation
    ObjectFrame* GetParent() { return parent; }
    ObjectFrame* GetRoot();
    int GetNumChildren() { return numChildren; }
    ObjectFrame* GetChild() { return child; }
    ObjectFrame* GetLeftSibling() { return leftSibling; }
    ObjectFrame* GetRightSibling() { return rightSibling; }

    float *GetObj2ParentXform(float *M); // in the case of no parent, same as Obj2World
    float *GetParent2ObjXform(float *M); // in the case of no parent, same as World2Obj

    ObjectFrame* SelectHier(Vec3f &Start, Vec3f &Dir, float &InT, float &OutT);

    // physics stuff
    void ResetForce() { totalForce = Vec3f(0, 0, 0); moving = false; }
    void ResetVelocity() { velocity = Vec3f(0, 0, 0); }
    void SetMass(float newMass) { mass = newMass; }
    void SetUnits(float newUnits) { units = newUnits; }
    float GetUnits() { return units; }
    float GetMass() { return mass; }
    void UpdatePosition(float deltaTime);
    void ApplyForce(Vec3f force) { totalForce += force*units; moving = true; }
    bool IsMoving() { return moving; } 
};

#endif
