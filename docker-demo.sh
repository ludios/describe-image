#!/bin/sh

set -eu

chmod -R a+rX $HOME/code/web-capture/learn-playwright
docker container run \
	--mount type=bind,source=$HOME/code/web-capture/learn-playwright,target=/app \
	--rm \
	--security-opt seccomp=$HOME/code/web-capture/playwright/docs/docker/seccomp_profile.json \
	playwright:localbuild \
	node /app/demo.js "https://www.google.com"
