@echo off
echo y | del *.plg > nul
echo y | del *.ncb > nul 
echo y | del *.opt > nul 
echo y | rmdir /s Debug > nul 
echo y | rmdir /s Release > nul
