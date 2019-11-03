@echo off

set FILE="data/ave_maria.mid"

if "%1"=="" goto :build
set FILE=%1

:build
javac -d bin -sourcepath src src/orchestra/*.java
java -cp bin orchestra.Orchestra %FILE%