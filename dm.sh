#!/bin/bash
env

gcloud config set project $DM_PROJECT

gcloud deployment-manager deployments describe xom-app-folders > /dev/null 2>&1
if [ $? -eq 0 ]; then
   COMMAND=update
else
   COMMAND=create
fi

gcloud deployment-manager deployments $COMMAND xom-app-folders --config configs/xom-apps-folders.yaml