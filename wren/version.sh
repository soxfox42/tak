#!/bin/sh
if command -v wren_cli > /dev/null; then
  wren=wren_cli
else
  wren=wren
fi
$wren --version
