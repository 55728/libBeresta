#!/bin/bash

#set -e

SCRIPT_DIR=$( cd "$( dirname "$0" )" && pwd -P )

RENDER_DIR=$SCRIPT_DIR/../../gen/
PREFIX=../bindings/ecl

mkdir $SCRIPT_DIR/res > /dev/null

pushd $RENDER_DIR > /dev/null

./render.sh $PREFIX/ecl-page-sizes.dj page_sizes.lsp ru $PREFIX/res/page_sizes.lisp
./render.sh $PREFIX/ecl-types.dj types.lsp ru $PREFIX/res/types.lisp
./render.sh $PREFIX/ecl.dj error.lsp ru $PREFIX/res/error.lisp
./render.sh $PREFIX/ecl.dj base.lsp ru $PREFIX/res/base.lisp
./render.sh $PREFIX/ecl.dj mmgr.lsp ru $PREFIX/res/mmgr.lisp
./render.sh $PREFIX/ecl.dj page.lsp ru $PREFIX/res/page.lisp
./render.sh $PREFIX/ecl.dj page_routines.lsp ru $PREFIX/res/page_routines.lisp

./render.sh $PREFIX/exp-ecl-page-sizes.dj page_sizes.lsp ru $PREFIX/res/exp-page_sizes.lisp
./render.sh $PREFIX/exp-ecl-types.dj types.lsp ru $PREFIX/res/exp-types.lisp
./render.sh $PREFIX/exp-ecl.dj error.lsp ru $PREFIX/res/exp-error.lisp
./render.sh $PREFIX/exp-ecl.dj base.lsp ru $PREFIX/res/exp-base.lisp
./render.sh $PREFIX/exp-ecl.dj mmgr.lsp ru $PREFIX/res/exp-mmgr.lisp
./render.sh $PREFIX/exp-ecl.dj page.lsp ru $PREFIX/res/exp-page.lisp
./render.sh $PREFIX/exp-ecl.dj page_routines.lsp ru $PREFIX/res/exp-page_routines.lisp

popd > /dev/null
