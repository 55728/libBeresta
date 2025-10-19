#!/bin/bash

echo run $1 [[$2]]

PATH=$PATH:$1
cd $1

echo [[$PATH]]

PATH=$PATH /usr/bin/clitest $2/*.test
