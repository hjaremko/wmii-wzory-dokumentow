#!/bin/bash

for f in *.tex; do
    $(echo -n "tectonic $f; " >> tectonic-command)
done

for f in */*.tex; do
    $(echo -n "tectonic $f; " >> tectonic-command)
done


for f in tcs/*/*.tex; do
    $(echo -n "tectonic $f; " >> tectonic-command)
done
