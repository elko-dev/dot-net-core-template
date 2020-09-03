#!/usr/bin/env bash

set -euo pipefail

EXTENSION_DIR=$1

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$SCRIPT_DIR/.."
OUTPUT_DIR="$PROJECT_DIR/output"
TF_DIR="$PROJECT_DIR/tf"

terraform destroy "$TF_DIR/$EXTENSION_DIR" 