#!/bin/bash
export KUBE_CONFIG_PATH=~/.kube/config
echo ECK Operator
# initialize terraform configuration
terraform init

# validate terraform configuration
terraform validate

# create terraform plan
terraform plan -out state.tfplan 

# apply terraform plan
terraform apply state.tfplan
