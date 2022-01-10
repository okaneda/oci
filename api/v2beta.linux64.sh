#!/bin/bash
mkdir -p ~/.hc
curl https://${GHB_TKN}@github.com/okaneda/distribution/archive/refs/heads/main.tar.gz > main.tar.gz
tree $(pwd)
ls -l main.tar.gz
tar -xzf $(pwd)/main.tar.gz --strip-components 1 -C ~/.hc
