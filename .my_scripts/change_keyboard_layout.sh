#!/bin/bash

LAYOUT=$(setxkbmap -print -verbose 10 | awk /'layout/{print $2}')

if [ "$LAYOUT" = us ]; then
    setxkbmap il
else
    setxkbmap us
fi
