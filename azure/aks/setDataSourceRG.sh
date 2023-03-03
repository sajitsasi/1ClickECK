#!/bin/bash
set -e
echo "setDataSourceRG.sh: getting resource group name"
var1=$(terraform output resource_group_name)
echo "setDataSourceRG.sh: parsing resource group name"
kernel=$(uname -s)
if [ "${kernel}" = "Darwin" ]; then
  sed -i "" "s/resource_group_name=.*/resource_group_name=$var1/g" ../create-eck/data-sources.tf
else
  sed -i "s/resource_group_name=.*/resource_group_name=$var1/g" ../create-eck/data-sources.tf
fi
