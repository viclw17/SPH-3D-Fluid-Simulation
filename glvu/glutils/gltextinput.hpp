//------------------------------------------------------------------------------
// File : gltextinput.hpp
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
// gltextinput.hpp
// 
// This is a very bare-bones text input field that can be used in
// OpenGL apps.
//
// Sometimes you find yourself in the situation where you've got a
// little demo program that uses a combination of single key-strokes
// and/or mouse input for all user interaction.  No other GUI than
// that, and it works fine for your purposes.  Then you discover you
// need to be able to specify a filename -- or you'd like to have a
// command-line for certain infrequent commands since you've run out
// of keys.  Or you'd like the user to type their name.  
//
// Rather than having to bite the bullet and integrate a big old GUI
// library, or resort to cin calls just so you can enter that one word
// or phrase, wouldn't it be nice to be able to slap in a little entry
// widget that could get the text, right into your app's main window?
// Well, that's what this is.
//
// The GLVUText stuff give simple access to basic OpenGL text output,
// this class gives relatively simple access to basic OpenGL text input.
//
// Cut & Paste works on Windows.  Paste sort of works on XWindows.  Help fixing
// the XWindows code certainly appreciated -- it always pastes the previous
// selection first, so you have to paste twice.
//
// Usage:
//  Create an instance of a GLTextInputField, and give it a commit func.
//  Set the font if you wish,  using GLText::SetCurrentFont, then draw it
//  in the desired location from your displayFunc.
//  In your keyboard and mouse GLUT or GLVU callbacks, call the
//  GLTextInputField::filter* methods.  This will be a no-op if the text field is 
//  not being shown, so you can always call it safely.  The filter methods 
//  will return true if the textfield handled the input, false if not.
//
//  See glvutext_example.cpp for an example.
//
//============================================================================
#ifndef GL_TEXT_INPUT_FIELD_H
#define GL_TEXT_INPUT_FIELD_H

#include <string>

class GLTextInputField
{
public:
  typedef void (*CommitFunc)(GLTextInputField *);
  enum { ALIGN_LEFT, ALIGN_CENTER, ALIGN_RIGHT };

public:
  GLTextInputField();
  
  // Set a commit func to make something happen when the user presses return
  // or override commit()
  void setCommitFunc(CommitFunc cf);
  CommitFunc getCommitFunc() const;

  void show();
  void hide();
  void close(); // same as hide & clear
  bool isHidden() const;
  bool isShown() const;
  void clear();
  void setText( const char *);
  const char *getText() const;
  void setLabel( const char *);
  const char *getLabel() const;
  void setAlignment( int alignEnum ); // ALIGN_LEFT etc
  int getAlignment() const;

  // Call these from your GLUT or GLVU callback handlers
  // All return true if the event was handled and no further processing
  // should be performed in your normal handler.  Only a "shown" 
  // GLTextInputField can return true from these methods.
  virtual bool filterKeyDown(unsigned char key, int x, int y);
  virtual bool filterSpecialKeyDown(int key, int x, int y);
  virtual bool filterMouseMotion(int x, int y);
  virtual bool filterPassiveMotion(int x, int y);
  virtual bool filterMouseButton(int button, int state, int x, int y);
  

  // You can override draw to make it draw some other way if you like
  virtual void draw(int x = 10, int y = 10);

protected:
  virtual void commit();

  virtual void drawCaret( int x, int y);
  //virtual void drawBackground();  // for future versions
  //virtual void drawText();


private:
  void common_init();
  int m_caretpos;
  int m_alignment;
  bool m_insertMode;
  bool m_shown;
  CommitFunc  m_commitFunc;
  std::string m_text;
  std::string m_label;
};

//----------------------------------------------------------------------------
inline void GLTextInputField::setCommitFunc( GLTextInputField::CommitFunc cfunc )
{
  m_commitFunc = cfunc;
}
//----------------------------------------------------------------------------
inline GLTextInputField::CommitFunc GLTextInputField::getCommitFunc( void ) const 
{
  return m_commitFunc;
}
//----------------------------------------------------------------------------
inline bool GLTextInputField::isHidden() const
{
  return !m_shown;
}
//----------------------------------------------------------------------------
inline bool GLTextInputField::isShown() const
{
  return m_shown;
}
//----------------------------------------------------------------------------
inline const char *GLTextInputField::getText() const
{
  return m_text.c_str();
}
//----------------------------------------------------------------------------
inline const char *GLTextInputField::getLabel() const
{
  return m_label.c_str();
}
//----------------------------------------------------------------------------
inline int GLTextInputField::getAlignment() const
{
  return m_alignment;
}
//----------------------------------------------------------------------------

#endif
