#!/usr/bin/env bash

mkdir -p _site || true
mkdir -p _data || true

cp netlify_redirects.txt _site/_redirects
curl --compress https://www.parsehub.com/api/v2/projects/$PARSEHUB_PROJECT_KEY/last_ready_run/data?api_key=$PARSEHUB_API_KEY > _data/data.json

export JEKYLL_ENV=production
bundle exec jekyll build

cp _data/data.json _site/data.json
