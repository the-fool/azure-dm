#!/bin/bash
set -e

echo "Authenticating with SA key"
/pipeline/auth.sh

exec "$@"