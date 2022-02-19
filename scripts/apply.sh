#!/bin/bash

for manifest in manifests/*.yaml;
    do
        kubectl apply -f $manifest
    done