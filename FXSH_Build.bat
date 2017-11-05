@echo off
rem Do not edit! This batch file is created by CASIO fx-9860G SDK.


if exist FXQR.G1A  del FXQR.G1A

cd debug
if exist FXADDINror.bin  del FXADDINror.bin
"E:\CASIO\fx-9860G SDK\OS\SH\Bin\Hmake.exe" Addin.mak
cd ..
if not exist debug\FXADDINror.bin  goto error

"E:\CASIO\fx-9860G SDK\Tools\MakeAddinHeader363.exe" "E:\CASIO\fx-9860G SDK\Project\fxQr"
if not exist FXQR.G1A  goto error
echo Build has completed.
goto end

:error
echo Build was not successful.

:end

