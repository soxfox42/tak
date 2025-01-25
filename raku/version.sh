#!/bin/bash
raku -v | sed -n 's/.*\(Rakudo.*\)/\1/p'
