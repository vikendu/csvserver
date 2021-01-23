#!/bin/bash
for i in {0..9}; do echo $i, $((3 + $RANDOM % 10)); done > inputdata >> inputdata
