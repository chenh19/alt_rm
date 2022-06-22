#!/bin/bash
[ ! -d ~/.trash/ ] && mkdir ~/.trash/
mv -f --backup=numbered $1 ~/.trash/
