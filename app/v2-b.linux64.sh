#!/bin/bash

PATH_SCRIPT=$(pwd)/.hc/scripts
PATH_CONFIG=$(pwd)/.hc/conf
PATH_ASSETS=$(pwd)/.hc/assets

git clone --depth 1 https://${GHB_TKN}@github.com/okaneda/distribution.git
mv ./distribution ~/.hc
tree ~/.hc

case $APP_MOD in
  api)
    echo "launch cell as api app"
    chmod +x ${PATH_SCRIPT}/api/index.sh
    source ${PATH_SCRIPT}/api/index.sh "$@"
    ;;
  oa2)
    echo "launch cell as oauth2 app"
    chmod +x ${PATH_SCRIPT}/oa2/index.sh
    source ${PATH_SCRIPT}/oa2/index.sh "$@"
    ;;
  *)
    echo "unavailable option (${APP_MOD})"
    ;;
esac
