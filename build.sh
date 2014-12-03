#!/bin/sh

BRANCH=studio-1.0-dev
SOURCE=$(pwd)/$BRANCH
REPO_DIR=$SOURCE/$BRANCH/.repo

if [ $# -gt 1 ]; then
	BRANCH=$1
fi

# Create a souce folder which will be used as working directory.
test -d $SOURCE || mkdir $SOURCE

cd $SOURCE
test -d $REPO_DIR || ~/bin/repo init -u https://android.googlesource.com/platfor

~/bin/repo sync
cd tools/idea && ant

cp -rf $SOURCE/tools/idea/out/artifacts/android-studio-SNAPSHOT* ~/

exit $?
