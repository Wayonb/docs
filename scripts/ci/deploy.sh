#!/bin/bash

set -ex

echo "Building docs..."
make alldocs

echo "Linking Check..."
make linkcheck

#  The $SKIP_RELEASE_PUBLISH env variable can avoid republishing if the release process fails.
if [ "$SKIP_RELEASE_PUBLISH" = "true" ]; then
   echo "Skipping publishing of docs"
else
   echo "Publishing..."
   echo "Creating gh-pages branch"
   git checkout -b gh-pages

   echo "Copying files"
   mv -f -t docs build/html/*

   echo "Adding docs folder"
   git add -A docs
   echo "Committing"
   git commit -m "Release docs" > /dev/null 2>&1
   echo "Pushing"
   git push --set-upstream github gh-pages --force
   echo "Publish docs"
fi
