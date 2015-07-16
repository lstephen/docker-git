#!/bin/bash

set -e

[[ -n "$GIT_AUTHOR_NAME" ]] && git config user.name $GIT_AUTHOR_NAME
[[ -n "$GIT_AUTHOR_EMAIL" ]] && git config user.email $GIT_AUTHOR_EMAIL

printf "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config

release_commit=`git rev-parse HEAD`

echo "Release commit ${release_commit}..."

echo "Pushing to master..."
git push -f origin `git rev-parse HEAD`:master

echo "Push to master done."

echo "Release done."

