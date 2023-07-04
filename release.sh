#!/bin/bash
export TOKEN=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
export GITHUB_REPOSITORY=gustavokch/linux-mainline-kernel
export RELEASE_START=1190
export RELEASE_PREFIX=$(./dev-make version)
export RELEASE=6.2.0-$RELEASE_START-rock64-ayufan
export RELEASE_NAME=$(./dev-make version)
export RELEASE_TITLE=$RELEASE-release
export DESCRIPTION=www.github.com/$GITHUB_REPOSITORY/actions/runs/$GITHUB_RUN_ID
echo $TOKEN > token
export GH_TOKEN=$TOKEN
export GH_TOKEN=
ls *.deb > deb
export DEB=$(cat deb)
echo $RELEASE
echo $GH_TOKEN
echo $RELEASE_TITLE
echo $RELEASE_NAME
env
gh auth login --with-token < token
gh release create --title $RELEASE_TITLE --generate-notes -R https://github.com/gustavokch/linux-mainline-kernel $RELEASE $DEB
