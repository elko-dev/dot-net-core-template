#!/usr/bin/env bash

set -euo pipefail

EXTENSION_DIR=$1
ENV=$2

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$SCRIPT_DIR/.."
TF_DIR="$PROJECT_DIR/tf"

terraform apply -auto-approve -var-file="$TF_DIR/$EXTENSION_DIR/environments/$ENV.tfvars" "$TF_DIR/$EXTENSION_DIR"

