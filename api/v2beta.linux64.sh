#!/bin/bash
mkdir -p ~/.hc
curl -s -O https://${GITHUB_TKN}@github.com/okaneda/distribution/archive/refs/heads/main.tar.gz
tree $(pwd)
tar -xzf $(pwd)/main.tar.gz --strip 1 -C ~/.hc
