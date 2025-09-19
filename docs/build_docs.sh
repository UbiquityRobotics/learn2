#!/bin/bash

# This script builds Sphinx documentation and deploys it to GitHub Pages.
# Inspired by common Sphinx + GitHub Pages workflows; fully rewritten for this project.
# Author: Paveljolak
# Project: Ubiquity Robotics Documentation
# Date: Sep 2, 2025

set -e
set -x

################################################################################
# Build only the current branch, preserve all other branches in gh-pages
################################################################################

cd "$(dirname "$0")/../" || exit 1

# activate virtual environment
source venv/bin/activate

# vars from workflow
CURRENT_BRANCH=${CURRENT_BRANCH:-$(git rev-parse --abbrev-ref HEAD)}
ALL_VERSIONS=${ALL_VERSIONS:-$CURRENT_BRANCH}
REPO_NAME="${GITHUB_REPOSITORY##*/}"
LATEST_VERSION="jazzy"

# prepare build directories
BUILD_DIR=$(mktemp -d)
DOCS_DIR="docs/_build/html"

# cleanup old build
make -C docs clean

# checkout current branch
git checkout "$CURRENT_BRANCH"

# build docs for current branch
sphinx-build -b html docs/ "$DOCS_DIR"

# copy to temp build dir under branch name
mkdir -p "$BUILD_DIR/$CURRENT_BRANCH"
rsync -av "$DOCS_DIR/" "$BUILD_DIR/$CURRENT_BRANCH/"

# fetch existing gh-pages branch
GH_DIR=$(mktemp -d)
git clone -b gh-pages "https://token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" "$GH_DIR"

# merge current branch docs into gh-pages
rsync -av --delete "$BUILD_DIR/$CURRENT_BRANCH/" "$GH_DIR/$CURRENT_BRANCH/"

# add .nojekyll file so the content shows up
touch "$GH_DIR/.nojekyll"

# write CNAME if using custom domain
if [ -n "$CUSTOM_DOMAIN" ]; then
    echo "$REPO_NAME.$CUSTOM_DOMAIN" > "$GH_DIR/CNAME"
fi

# dynamically generate index.html with redirect
if [ -n "$CUSTOM_DOMAIN" ]; then
    REDIRECT_PATH="/${LATEST_VERSION}/"
else
    REDIRECT_PATH="/${LATEST_VERSION}/"
fi

cat > "$GH_DIR/index.html" <<EOF
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${REPO_NAME} Ubiquity Robotics Documentation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="refresh" content="0; URL='${REDIRECT_PATH}'">
</head>
<body style="font-family: sans-serif; text-align: center; margin-top: 5em;">
    <p>Redirecting to <a href="${REDIRECT_PATH}">the documentation</a>…</p>
</body>
</html>
EOF


# commit & push
cd "$GH_DIR"
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
git add .
git commit -m "Update docs for ${CURRENT_BRANCH} from ${GITHUB_REF_NAME} by ${GITHUB_ACTOR}" || echo "No changes to commit." 
git push

echo "Docs updated successfully for branch $CURRENT_BRANCH"

