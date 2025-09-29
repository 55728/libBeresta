#!/bin/bash

#ecl \
/home/dmitrys/devel/lisp/ecl-pkg/bin/ecl \
	--eval "(pushnew :ISO-216-ONLY *features*)" \
    --eval "(ext:install-c-compiler)" \
    --eval "(setf c:*user-cc-flags* \"-I../../include -I../../build/include -L../../build/src/ -lbrst -fPIC -lz\")" \
    --eval "(setf c:*user-linker-libs* \"-L../../build/src/ -lbrst -fPIC -lz\")" \
    --eval "(setf c::*delete-files* nil)" \
    --eval "(pushnew  #P\"$(realpath .)/\" asdf:*central-registry*)" \
    --eval "(asdf:load-system 'cl-beresta :verbose t :force nil)" \
    --load xobject_text

	#--eval "(princ (format nil \"~A\" compiler::*default-machine*))" \
    #



# (pushnew  #P"/home/dmitrys/devel/libberesta/bindings/ecl/" asdf:*central-registry*)
# (asdf:load-system 'cl-beresta :verbose t)