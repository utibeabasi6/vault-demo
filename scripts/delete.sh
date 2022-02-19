#!/bin/bash

for manifest in manifests/*.yaml;
    do
        kubectl delete -f $manifest
    done