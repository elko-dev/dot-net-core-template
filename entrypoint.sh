#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$SCRIPT_DIR"
SOLUTION_DIR="$PROJECT_DIR/dot-net-core-template"

cd "$SOLUTION_DIR"

run_cmd="dotnet run --server.urls http://*:5000"

until dotnet ef database update; do
>&2 echo "SQL Server is starting up"
sleep 1
done

>&2 echo "SQL Server is up - executing command"

exec $run_cmd