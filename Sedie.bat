@echo off
cd /d "%~dp0"
java -cp "sedie-desktop-1.0.0.jar;libs/*" com.sedie.Launcher
if errorlevel 1 pause