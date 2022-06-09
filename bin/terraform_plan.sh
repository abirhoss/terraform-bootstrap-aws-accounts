#!/bin/sh

set -eu
set -o pipefail

account_name=$1

: "${AWS_DEFAULT_REGION:?Need to set AWS_DEFAULT_REGION}"
: "${AWS_ACCESS_KEY_ID:?Need to set AWS_ACCESS_KEY_ID}"
: "${AWS_SECRET_ACCESS_KEY:?Need to set AWS_SECRET_ACCESS_KEY}"
: "${account_name}"

rm -rf terraform/terraform_plan
mkdir terraform/terraform_plan || true
cd terraform/accounts/${account_name}
terraform init
terraform plan -out=../../terraform_plan/${account_name}.plan