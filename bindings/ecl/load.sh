#!/bin/bash

ecl --eval "(pushnew  #P\"/home/dmitrys/devel/libberesta/bindings/ecl/\" asdf:*central-registry*)" \
    --eval "(asdf:load-system 'cl-beresta :force t)"
