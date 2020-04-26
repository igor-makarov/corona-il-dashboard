#!/usr/bin/env bash

mkdir -p _site || true

cp netlify_redirects.txt _site/_redirects
curl --compress https://www.parsehub.com/api/v2/projects/$PARSEHUB_PROJECT_KEY/last_ready_run/data?api_key=$PARSEHUB_API_KEY > _site/data.json