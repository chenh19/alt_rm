#!/bin/bash
[ ! -d ~/.trash/ ] && mkdir ~/.trash/
mv -f --backup=numbered "$@" ~/.trash/
