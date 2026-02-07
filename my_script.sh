#!/bin/bash
# basic little shell script clean, compile, and run program
echo "Cleaning directory..."
make clean
echo "Compiling the program..."
make
echo "Running the program..."
./lab2