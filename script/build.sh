#!/bin/sh -e

rm -rf build
script/check.sh --ci-mode
clisp src/Boilerplate.lisp
