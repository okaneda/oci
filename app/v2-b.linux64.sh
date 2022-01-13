#!/bin/bash

PATH_MAIN=~/.hc
PATH_SCRIPT=$PATH_MAIN/scripts
PATH_CONFIG=$PATH_MAIN/conf
PATH_ASSETS=$PATH_MAIN/assets
PATH_BINARY=$PATH_MAIN/bin
CELL_BINARY=cell

git clone --depth 1 https://${GH_TKN}@github.com/okaneda/distribution.git
mv ./distribution $PATH_MAIN
tree $PATH_MAIN

printf "\ninstalling cell\n\n"
chmod +x ${PATH_SCRIPT}/cell/v2-b.linux64.sh
source ${PATH_SCRIPT}/cell/v2-b.linux64.sh "$@"

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
    cell "$@"
    ;;
esac
