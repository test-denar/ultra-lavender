#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://artem-stackbit.ngrok.io/pull/6034e2c2a6e08d33b043e81b

# build site
npm run build

echo "stackbit-build.sh: finished build"
