@echo off
SET scad="F:\Soft\OpenSCAD\openscad.exe"
SET inkscape="F:\Soft\inkscape\bin\inkscape.exe"
SET folder=outputs

for %%i in (black,white,blue,pink,cuts,dimensions) DO (
    @echo on
    %scad% -o "%folder%\art_%%i.svg" "artwork-clear.scad" -D enable_bleed=1 -D "build=\"%%i\""
)

REM pause