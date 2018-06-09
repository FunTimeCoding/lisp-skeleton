#!/bin/sh -e

rm -rf build
script/check.sh --ci-mode
# TODO: Find a compiler available on macOS and Debian
#clisp src/Boilerplate.lisp
