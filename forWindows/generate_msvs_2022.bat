@echo off
setlocal
set DEPTH_PATH=%~dp1
if not "%2" equ "" (
	set DEPTH_PATH=%~dp2
)
set GEN_GYP_PATH=%~dp1
cd %~dp0
../gyp.bat %GEN_GYP_PATH%%~nx1 --depth=%DEPTH_PATH% -f msvs -G msvs_version=2022