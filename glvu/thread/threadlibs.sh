#!/bin/sh
# Simple script to blurt out the appropriate link flags for a given system
case `uname` in
   (IRIX*) echo -lmpc ;;
   (Linux*) echo -lpthread ;;
   # otherwise do nothing and hope for the best
esac
