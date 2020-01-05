#!/bin/bash
set -e

/pipeline/auth.sh

exec "$@"