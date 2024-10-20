#!/bin/bash
if command -v chicken-csc > /dev/null; then
  chicken=chicken-csc
else
  chicken=csc
fi
$chicken -release
