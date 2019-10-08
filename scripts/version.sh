#!/bin/bash


commit=$(git rev-parse --short=8 HEAD)

tag=$(git describe --tags)

if [[ $tag == v* ]] ;
then
    export version="$(echo $tag | cut -c2-)"
else
    export version="$commit"
fi