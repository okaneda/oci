#!/bin/bash
git clone https://${GHB_TKN}@github.com/okaneda/distribution.git
mv ./distribution ~/.hc
tree ~/.hc
cd ~/.hc && index.sh "$@"
