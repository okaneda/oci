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
    chmod +x ${SCRIPT_PATH}/api/index.sh
    source ${SCRIPT_PATH}/api/index.sh "$@"
    ;;
  oa2)
    echo "launch cell as oauth2 app"
    chmod +x ${SCRIPT_PATH}/oa2/index.sh
    source ${SCRIPT_PATH}/oa2/index.sh "$@"
    ;;
  *)
    echo "unavailable option (${APP_MOD})"
    ;;
esac
