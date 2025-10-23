#!/bin/bash

cc -DNDEBUG -O2 -g0 -s uxnmin.c -lutil -o uxnmin
cat tak.tal | uxnmin uxnasm.rom > tak.rom
