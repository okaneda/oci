#!/bin/bash
curl -s -O https://${GITHUB_TKN}@https://github.com/okaneda/distribution/archive/refs/heads/main.tar.gz
tar -xzf ./main.tar.gz --strip 1 -C ~/.hc
