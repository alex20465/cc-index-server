#!/bin/bash

if [ ! -d "collections" ]; then
    mkdir collections
fi

while read -r line
do

echo "Synchronize data $line";
s3cmd sync -r --exclude=* --include="cluster.idx" --include="metadata.yaml" s3://commoncrawl/cc-index/collections/$line collections/

done < indexes.txt