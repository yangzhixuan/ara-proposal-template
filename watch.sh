#!/bin/bash

make all

fswatch -o *.tex *.bib | while read num ; \
  do \
    echo "Recompiling"
    time make all
    echo "Done"
    echo
  done
