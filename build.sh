#!/bin/bash

FILE="data/ave_maria.mid"

if [ $# -ge 1 ]
then
  FILE=$1
fi

javac -d bin -sourcepath src src/orchestra/*.java
java -cp bin orchestra.Orchestra $FILE