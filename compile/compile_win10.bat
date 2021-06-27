@echo off

SET appnamepre=billiardknight
COPY  forpyinstaller\main.spec %CD%.\
cd %CD%.\
pyinstaller main.spec
SET appname=%appnamepre%'_linux'
\rm -R dist\%appname%
mkdir dist\%appname%
mv dist\code dist\%appname%
SET %appname%launchername='launcher.bat'
COPY  compile\forpyinstaller\%launchername% dist\%appname%
cd dist
zip -r %appname% %appname%
mv %appname%%CD%zip %CD%.\compile
cd %CD%.\
DEL  main.spec
DEL  dist
DEL  build
DEL  __pycache__
