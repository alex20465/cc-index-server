#!/bin/bash

if [ ! -d "collections" ]; then
    mkdir collections
fi

s3cmd sync -r --exclude=* --include="cluster.idx" --include="metadata.yaml" s3://commoncrawl/common-crawl/cc-index/collections/ collections/
