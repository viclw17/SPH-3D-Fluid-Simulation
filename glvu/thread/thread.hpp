//------------------------------------------------------------------------------
// File : thread.hpp
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

/*****************************************************************************\
  thread.hpp
  --
  Description : encapsulates all the info needed for a simple thread.
                Takes care of killing off threads when program ends.

        on sgi's, you must link with -lmpc

        on linux, you must link with -lpthread

	On the make-based platforms you can call the threadlibs.sh
        script to automatically select the proper link line.

        Semas and threads can be declared whether or not
        threads can really be used.

        An error only occurs when a user calls go() on a thread.

        This allows code to be written which protects potentially
        shared data and is valid whether there is threading or not.

        Conditional compilation can be done using ifdef
        THREADS_AVAILABLE, and run-time conditional execution can
        be based on the value of Thread::available().


        This note below should no longer be true -- terminateThread
        does this.
        NOTE: kill only acts on the thread which calls it in win95/nt;
        this is not usually the desired behavior, but i have not found
        a way to have one thread kill another in win95/nt.  usually
        a controlling process wants to make this call to kill a child
        process (the thread associated with the Thread object) -- this
        will not work right now in win95/nt.

  Modifications:
    10/16/00  Bill Baxter 
              -- added Linux (pthreads) support
	      -- added join() for all platforms
              -- streamlined user data handling

  Todo:  Add a way to get the current Thread object.
         Special case unit semaphore to use pthread_mutex on Linux?

  ----------------------------------------------------------------------------
  Author: weberh
  Created: Mon Mar 23 16:42:55 1998
  Revised: Thu May 14 09:59:05 1998 by weberh
  $Source: /afs/cs.unc.edu/project/walk/playpen/cvs/glvu/thread/thread.hpp,v $
  $Locker:  $
  $Revision: 1.3 $
\*****************************************************************************/

#ifndef _THREAD_H_
#define _THREAD_H_

#if defined(sgi) || defined(_WIN32) || defined(__linux__)
#define THREADS_AVAILABLE
#else
#undef THREADS_AVAILABLE
#endif

// multi process stuff
#ifdef sgi
#include <task.h>
#include <ulocks.h>
#elif defined(_WIN32)
#include <process.h>
#elif defined(__linux__)
#include <pthread.h>
#include <semaphore.h>
#endif
#include <stdio.h>

#if defined(_WIN32)
#define THREAD_STDCALL __stdcall
#else
#define THREAD_STDCALL
#endif

// kill 
#include <sys/types.h>
#include <signal.h>

//#include <iostream.h>

class Semaphore {
public:
  // mutex by default (0 is a sync primitive)
  Semaphore( int cNumResources = 1 );

  // This does not copy the state of the semaphore, just creates
  // a new one with the same resource count
  Semaphore( const Semaphore& s );
  ~Semaphore();

  // routine to reset it (0 on success, -1 failure)
  // (may create new semaphore)
  int reset( int cNumResources = 1 );

  // routines to use it (p blocks, cond p does not)
  // p returns 1 when it has acquired the resource, -1 on fail
  // v returns 0 when it has released the resource, -1 on fail
  // condP returns 0 if it could not access the resource
  // and 1 if it could (-1 on fail)
  int p();
  int v();
  int condP();
  // Aliases for the Dutch impaired
  int down() { return p(); }
  int up() { return v(); }
  int trydown() { return condP(); }

  // read values
  int numResources();

protected:
  // common init routine
  void init();

  int cResources;

  // arch specific details
#if defined(sgi)
  // single mem area for dynamically alloced shared mem
  static usptr_t *ppaArena;
  static void allocArena();

  // the semaphore struct in the arena
  usema_t *ps;
  ulock_t l;
  bool fUsingLock;
#elif defined(_WIN32)
  void * hSemaphore;
#elif defined(__linux__)
  sem_t sem;
#endif
};

// A ptr to this struct will be passed to the 
// thread function.  The user data ptr will be in pvUD,
// and ps should contain a semaphore for mutex access to
// the data.

// The user should create and manage the semaphores.

typedef void (*THREAD_FUNC) ( void *pvThreadData );

class Thread {
public:  
  // Process ID type
#if defined(sgi)
  typedef pid_t PID_t;
#elif defined(_WIN32)
  typedef unsigned long PID_t;
#elif defined(__linux__)
  typedef pthread_t PID_t;
#else
  typedef unsigned long PID_t;
#endif

  // Thread constructors:
  // pfThread -> the routine to call in the new thread's context on go().
  // userdata -> void pointer which will be passed as the argument
  //             to the pfThread function.
  Thread( THREAD_FUNC pfThread, void *userdata = 0);
  // The no arg constructor calls Thread's run() method. 
  // Subclass thread if you use this constructor.
  Thread();
  virtual ~Thread();

  // start/kill/join the thread (0 on success, -1 on failure)
  int go();
  int go(void *pvNewUserData);
  int kill();
  int join();
  
  // Thread info:
  // check if running
  bool running();
  // get proc id (the system-assigned id)
  PID_t pid();

  // Return Thread object of current thread.
  // Can return NULL for main thread.  Can behave badly if
  // current thread was not created by this Thread API.
  static Thread* getCurrent();

  // run-time user function to test it threads are available
  // (same value as #ifdef THREADS_AVAILABLE)
  static bool available();

  // this can be used to change the ThreadData user data ptr
  // between calls to go (ie, when a thread object is used
  // many times with different args).  This will take
  // effect the next time go() is called.
  void userData( void *pvNewUserData );
  void *userData();
  
  // Virtual function called after go() if no callback specified.
  virtual void run();

  // Pause the current thread for some number of milliseconds
  static void msleep(unsigned long msec);

protected:  
  // user func and data ptrs
  void (*pfThread)(void *pvThreadData);
  void *pvUserdata;
  
  static void threadFuncShell( void *pvThread );
  static void* threadVoidFuncShell( void *pvThread );
  static unsigned int THREAD_STDCALL threadUIntFuncShell( void *pvThread );

  // the process id
  PID_t ulProcID;

  // arch specific details
};
#endif //_THREAD_H_



/*****************************************************************************\
  $Log: thread.hpp,v $
  Revision 1.3  2002/08/31 22:32:18  baxter
  Changed Win32 version to use beginthreadex instead of beginthread.
  Apparently the return value from beginthread isn't actually a valid
  Windows HANDLE.  That might explain some error message I've seen
  on occasion out of this Win32 threads implementation.

  Revision 1.2  2002/03/13 08:22:04  harrism
  Added a free software license / disclaimer to all GLVU / QGLVU files.

  Revision 1.1.1.1  2002/02/20 20:08:55  baxter
  Moved from glvuext to main glvu directory.  It's proven itself to be worthy.

  Revision 1.6  2001/10/04 13:38:19  baxter
  Don't include iostream.h, let the user decide either iostream or iostream.h

  Revision 1.5  2000/10/22 23:29:55  baxter
  SGI's getCurrent was broken.  Fixed now.
  SGI also turned up race condition in pid().  Was possible for child
  to call pid() and get 0 before parent had a chance to set it to something.
  Also fixed a missing return type that the PC didn't complain about.

  Revision 1.4  2000/10/22 22:25:02  baxter
  Added static function 'msleep'.  Platform indep. way to suspend current
  thread.

  Revision 1.3  2000/10/22 20:19:21  baxter
  Implemented getCurrent for Win32.  Fixed bug that came from removing
  header dependence on threadutil.h.

  Revision 1.2  2000/10/22 19:42:24  baxter
  Added getCurrent() API for sgi and linux.  Win32 still to go.
  Also added virtual run() method that can be used to subclass Thread
  instead of giving it a callback func.

  Revision 1.1.1.1  2000/10/16 15:08:48  baxter
  Improved WeberH Thread class

  Revision 1.1  2000/04/25 20:47:11  baxter
  initial checkin

  Revision 4.3  1998/10/02 22:27:28  weberh
  *** empty log message ***

  Revision 4.2  1998/04/23 04:14:25  weberh
  *** empty log message ***

  Revision 4.1  1998/03/31 03:03:04  weberh
   pc threading compiles
  >

  Revision 4.0  1998/03/29 22:40:29  weberh
   sgi threading works. now on to pc threading.

  Revision 1.3  1998/03/28 21:07:40  weberh
  works.

  Revision 1.2  1998/03/25 23:06:22  weberh
  *** empty log message ***

  Revision 1.1  1998/03/23 22:57:19  weberh
  Initial revision

\*****************************************************************************/

