#!/bin/bash
if command -v factor-vm; then
  factor=factor-vm
else
  factor=factor
fi
$factor --version | head -n 1
