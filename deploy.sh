#!/bin/sh

# If a command fails then the deploy stops.
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Push changes in the current directory.
git add .
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"
git push origin master

# Push changes in hoanhan101.github.io directory.
bundle exec jekyll build

# Copy static site over hoanhan101.github.io
cp -R _site/. ../hoanhan101.github.io

cd ../hoanhan101.github.io
git add .
git commit -m "$msg"
git push origin master
