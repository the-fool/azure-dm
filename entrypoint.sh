#!/bin/bash
set -e

cd /pipeline

echo "Authenticating with SA key"
./auth.sh

exec "$@"