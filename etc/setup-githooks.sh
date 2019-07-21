#!/usr/bin/env bash
################################################################################

# 1. Save this script in your repo as "hooks/setup.sh"
# 2. Save your git hooks in "hooks/git/<hook name>"
# 3. Execute this script with bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# relative to top-level of repo
GITHOOKS_LOCATION='etc/githooks'

cd "${DIR}/.."

# Symlink git hooks
for filename in ${DIR}/githooks/*; do
	filename=$(basename ${filename})
	ln -s "../../${GITHOOKS_LOCATION}/${filename}" ".git/hooks/${filename}"
done
