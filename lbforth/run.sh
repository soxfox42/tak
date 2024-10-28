#!/bin/sh
{ cat tak.fs; echo "$3 $2 $1 tak ."; echo bye; } | ./lbforth | grep -o '[0-9]\+'
