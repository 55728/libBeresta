#!/bin/sh

PATH=$PATH:$1
cd $1

clitest $2/*.test
