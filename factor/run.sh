#!/bin/bash
if command -v factor-vm; then
  factor=factor-vm
else
  factor=factor
fi
$factor tak.factor $3 $2 $1
