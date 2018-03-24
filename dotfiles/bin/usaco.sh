#!/bin/bash
mkdir $1 && cd $1
touch $1.in $1.out &&
sed s/TASK:\ /TASK:\ $1/ ~/usaco/TEMPLATE > ./$1.java &&
sed -i s/\"\"/$1/ ./$1.java &&
sed -i s/public\ class\ Template/public\ class\ $1/ ./$1.java &&
echo "done"
