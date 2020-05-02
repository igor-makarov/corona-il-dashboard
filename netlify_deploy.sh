#!/usr/bin/env bash

mkdir -p _site || true
mkdir -p _data || true

cp netlify_redirects.txt _site/_redirects
PARSEHUB_DATA_URL="https://www.parsehub.com/api/v2/projects/$PARSEHUB_PROJECT_KEY/last_ready_run/data?api_key=$PARSEHUB_API_KEY"
curl --compress "$PARSEHUB_DATA_URL" > _data/data.json
bundle exec ruby process_data.rb

export JEKYLL_ENV=production
bundle exec jekyll build

echo "/raw_data.json $PARSEHUB_DATA_URL 200" >> _site/_redirects
cp _data/data.json _site/data.json
