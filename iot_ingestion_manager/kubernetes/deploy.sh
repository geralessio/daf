#!/usr/bin/env bash

set -e

cd ../../bin
. ./setVersions.sh
cd -

# test for template
envsubst < daf_iot_ingestion_manager.yml > output.yml

kubectl delete -f output.yml

kubectl create -f output.yml

rm output.yml
