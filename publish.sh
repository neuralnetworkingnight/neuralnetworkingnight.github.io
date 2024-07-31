#!/bin/bash
# Push the changes to aycogajiclab.github.io

#CHECKOUT="/tmp/caycogajiclab.github.io.git"

#rm -f -r $CHECKOUT
#git clone git@github.com:caycogajiclab/caycogajiclab.github.io.git $CHECKOUT

BUILDPATH=$PWD

#cd $BUILDPATH/themes/hugo-academic-group
#git checkout main
#git pull
#cd $BUILDPATH

rm -f -r $BUILDPATH/public/*

hugo -t hugo-academic-group

#cd $CHECKOUT
#rm -f -r $CHECKOUT/*
#cp -r $BUILDPATH/public/* $CHECKOUT/

git add -A
git commit -m "Website update"
git push origin main

#cd $BUILDPATH
#rm -f -r $CHECKOUT

echo "All done."
