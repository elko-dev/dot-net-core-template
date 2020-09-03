#!/usr/bin/env bash

set -euo pipefail

EXTENSION_DIR=$1

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$SCRIPT_DIR/.."
OUTPUT_DIR="$PROJECT_DIR/output"
TF_DIR="$PROJECT_DIR/tf"

terraform init "$TF_DIR/$EXTENSION_DIR/" 
    # -backend-config "key=dynamo/base.tfstate" \
    # -backend-config "bucket=$AZURE_BUCKET_NAME" \
    # -backend-config "region=$LOCATION" \
    # -reconfigure \
    # -input=false \
    # "$TF_DIR/$EXTENSION_DIR/"