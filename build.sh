#!/bin/sh -e

./run-style-check.sh --ci-mode
clisp src/Boilerplate.lisp
