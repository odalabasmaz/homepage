#!/bin/bash

echo "# initializing..."
rm -rf public/

echo "# building..."
hugo

echo "# deploying the site..."
aws s3 sync public s3://orhundalabasmaz.com/ \
  --profile homepage \
  --delete \
  --acl public-read \
  --exclude *.DS_Store \

echo "# cleaning up..."
rm -rf public/
