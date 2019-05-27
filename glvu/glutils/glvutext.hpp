//------------------------------------------------------------------------------
// File : glvutext.hpp
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
// text.hpp : bitmap text drawing routine; works like "printf"
//============================================================================

#ifndef __GLVU_TEXT_HPP__
#define __GLVU_TEXT_HPP__

//-------------------------------------------------------------------------------
/** @file glvutext.hpp
 *
 *  This file includes some utility routines to draw 2D text on the screen
 *  The implementation depends on the \c glutBitmapCharacter() routine and
 *  GLUT fonts.  This version supercedes the text.hpp that is located in
 *  the glvu/glvu directory.  That version is now deprecated.  The only real
 *  differences are that this one is wrapped in a namespace, and it is located
 *  where one would expect it to be, in glvu/glutils, rather than glvu/glvu.
 */
//-------------------------------------------------------------------------------

namespace GLVUText
{

//-------------------------------------------------------------------------------
/** 
 * Return a pointer to the current font to be used in calls
 * to Text() and Text3D().
 */
//-------------------------------------------------------------------------------
void* GetCurrentFont();

//-------------------------------------------------------------------------------
/** 
 * Set the current font. Use one of the GLUT font names.
 * Possible values include:
 * - GLUT_BITMAP_8_BY_13 
 * - GLUT_BITMAP_9_BY_15
 * - GLUT_BITMAP_TIMES_ROMAN_10 
 * - GLUT_BITMAP_TIMES_ROMAN_24
 * - GLUT_BITMAP_HELVETICA_10 
 * - GLUT_BITMAP_HELVETICA_12
 * - GLUT_BITMAP_HELVETICA_18
 * @see SetCurrentFont(int)
 */
//-------------------------------------------------------------------------------
void SetCurrentFont(void *font);

//-------------------------------------------------------------------------------
/** 
 * Set the current font. Use a number between 0 and 6, inclusive.
 * @see SetCurrentFont(void*)
 */
//-------------------------------------------------------------------------------
void SetCurrentFont(int fontid);

//-------------------------------------------------------------------------------
/**
// Get the height in pixels for a specified font. Needed for calculating the
// Yoffset to go to the next line. 
// @see GetFontHeight(), GetFontHeight(int)
*/
//-------------------------------------------------------------------------------
int GetFontHeight(void *font);

//-------------------------------------------------------------------------------
/**
// Get the height in pixels of the current font.
// @see GetCurrentFont, GetFontHeight(void*)
*/
//-------------------------------------------------------------------------------
int GetFontHeight();

//-------------------------------------------------------------------------------
/**
// Get the height in pixels of the current font.
// @see GetCurrentFont, GetFontHeight(), GetFontHeight(void*)
*/
//-------------------------------------------------------------------------------
int GetFontHeight(int fontid);

//-------------------------------------------------------------------------------
/**
// Draw text at the specified 2D location in screen coordinates in the current
// font.  The text will be drawn in the current OpenGL color.
// The function accepts printf style format specification.
//
// @see SetFont, Text3D
*/
//-------------------------------------------------------------------------------
void Text(int x, int y, char *format, ...);

//-------------------------------------------------------------------------------
/**
// Draw text at the specified 3D raster location.
// The text will be drawn in the current OpenGL color.
// The function accepts printf style format specification.
//
// @see SetFont, Text
*/
//-------------------------------------------------------------------------------
void Text3D(float x, float y, float z, char *format, ...);

} // end namespace GLVUText

#endif // __GLVU_TEXT_HPP__ 
