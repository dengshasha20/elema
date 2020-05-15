@echo off

echo components variable init..
set enter=%1%
set string=%enter%
set csslang=less
set cds=../
set layout=
echo components new folders..
mkdir pages\%enter%
cd pages\%enter%
:split
for /f "tokens=1,* delims=\" %%i in ("%string%") do (
  set input=%%i
  set string=%%j
  set  layout=%layout%%cds%
)
if not "%string%"=="" goto split

echo components write some default structure..
type nul>%input%.html
echo ^<view id=^"%input%^"^> >> %input%.html
echo   %input% >> %input%.html
echo ^<^/view^> >> %input%.html

type nul>%input%.%csslang%

type nul>%input%.css

type nul>%input%.vue
echo ^<template src=^".^/%input%.html^"^> >> %input%.vue
echo ^<^/template^> >> %input%.vue
echo ^<style^> >> %input%.vue
echo   ^@import url(^".^/%input%.css^"); >> %input%.vue
echo ^<^/style^> >> %input%.vue
echo ^<script^> >> %input%.vue
echo   export default { >> %input%.vue
echo     name: ^'%input%^', >> %input%.vue
echo     data() { >> %input%.vue
echo       return { >> %input%.vue
echo       } >> %input%.vue
echo     } >> %input%.vue
echo   } >> %input%.vue
echo ^<^/script^> >> %input%.vue

echo components write success

cd D:\DSS\elm\elm
