#!/bin/bash
javac $1.java && echo compiled
java $1 && echo executed
cat $1.out
