#!/bin/bash

INVALIDATE=false
for arg in "$@"; do
  [ "$arg" = "--invalidate" ] && INVALIDATE=true
done

echo "# initializing..."
rm -rf public/

echo "# building..."
hugo

echo "# deploying the site..."
aws s3 sync public s3://orhundalabasmaz.com/ \
  --profile homepage \
  --delete \
  --acl public-read \
  --exclude "*.DS_Store"

echo "# cleaning up..."
rm -rf public/

if [ "$INVALIDATE" = true ]; then
  echo "# invalidating cloudfront cache..."
  aws cloudfront create-invalidation \
    --distribution-id E2BUG1YD638VC1 \
    --paths "/*" \
    --profile homepage
fi

echo "# done."
