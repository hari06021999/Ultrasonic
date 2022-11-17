rem @echo off
set "usage=usage: flashi [{Debug|Release}]"

setlocal

set "build_type=Debug"
if not [%1]==[] set "build_type=%1"

set "ws_root=C:\Users\harip\STM32CubeIDE\workspace_1.10.1\Ultrasonic"
set "sn=066EFF485688494867113960"
set "image_file=%ws_root%\%build_type%\"

"%ws_root%\ci-cd-tool\flash.bat" %sn% "%image_file%"
