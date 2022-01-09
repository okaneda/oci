#!/bin/bash
mkdir -p ~/.hc
curl -s -O https://${GITHUB_TKN}@github.com/okaneda/distribution/archive/refs/heads/main.tar.gz
tree $(pwd)
ls -l main.tar.gz
tar -xzf $(pwd)/main.tar.gz --strip-components 1 -C ~/.hc
