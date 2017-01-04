#! /usr/bin/env bash
#
# refresh.sh
# Copyright (C) 2017  <@ruby.local>
#
# Distributed under terms of the MIT license.
#

cd HydraPlatform/
git reset --hard 
cd ..
cd HydraShapefileApp/
git reset --hard 
cd ..
rm -fr data
cp -r ../clean-checkouts/data .

