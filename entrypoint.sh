#!/bin/bash
set -e

./auth.sh

exec "$@"