#!/bin/bash
if command -v chicken-csc; then
  chicken=chicken-csc
else
  chicken=csc
fi
$chicken tak.scm
