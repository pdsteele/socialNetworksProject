#!/bin/bash

# echo `./proj-readInData TwitterRand1.25 TwitterRand1.25.graph`
# echo `./proj-readInData TwitterRand1.50 TwitterRand1.50.graph`
# echo `./proj-readInData TwitterRand2.25 TwitterRand2.25.graph`
# echo `./proj-readInData TwitterRand2.50 TwitterRand2.50.graph`
# echo `./proj-readInData TwitterRW1.25 TwitterRW1.25.graph`
# echo `./proj-readInData TwitterRW1.50 TwitterRW1.50.graph`
# echo `./proj-readInData TwitterRW2.25 TwitterRW2.25.graph`
# echo `./proj-readInData TwitterRW2.50 TwitterRW2.50.graph`
# echo `./proj-readInData TwitterTCL1.25 TwitterTCL1.25.graph`
# echo `./proj-readInData TwitterTCL1.50 TwitterTCL1.50.graph`

# echo `./proj-calcStats TwitterRand1.25.graph TwitterRand1.25 > TwitterRand1.25_output`
# echo `./proj-calcStats TwitterRand1.50.graph TwitterRand1.50 > TwitterRand1.50_output`
# echo `./proj-calcStats TwitterRand2.25.graph TwitterRand2.25 > TwitterRand2.25_output`
# echo `./proj-calcStats TwitterRand2.50.graph TwitterRand2.50 > TwitterRand2.50_output`
# echo `./proj-calcStats TwitterRW1.25.graph TwitterRW1.25 > TwitterRW1.25_output`
# echo `./proj-calcStats TwitterRW1.50.graph TwitterRW1.50 > TwitterRW1.50_output`
# echo `./proj-calcStats TwitterRW2.25.graph TwitterRW2.25 > TwitterRW2.25_output`
# echo `./proj-calcStats TwitterRW2.50.graph TwitterRW2.50 > TwitterRW2.50_output`
# echo `./proj-calcStats TwitterTCL1.25.graph TwitterTCL1.25 > TwitterTCL1.25_output`
# echo `./proj-calcStats TwitterTCL1.50.graph TwitterTCL1.50 > TwitterTCL1.50_output`

echo 'python degreeDistros.py twitter_combined2.txt twitter'
echo 'python degreeDistros.py TCL tcl'
echo 'python degreeDistros.py TwitterRW1.25 TwitterRW1.25'
echo 'python degreeDistros.py TwitterRW1.50 TwitterRW1.50'
echo 'python degreeDistros.py TwitterRW2.25 TwitterRW2.25'
echo 'python degreeDistros.py TwitterRW2.50 TwitterRW2.50'
echo 'python degreeDistros.py TwitterRand1.25 TwitterRand1.25'
echo 'python degreeDistros.py TwitterRand1.50 TwitterRand1.50'
echo 'python degreeDistros.py TwitterRand2.25 TwitterRand2.25'
echo 'python degreeDistros.py TwitterRand2.50 TwitterRand2.50'
