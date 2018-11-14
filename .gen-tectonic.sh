#!/bin/bash

for f in */*.tex; do
    $(echo -n "tectonic $f; " >> tectonic-command) 
done