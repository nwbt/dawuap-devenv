#! /usr/bin/env bash
#
# refresh.sh
# Copyright (C) 2017  <@ruby.local>
#
# Distributed under terms of the MIT license.
#

rm -fr HydraPlatform/ HydraShapefileApp/ data/
cp -r ../clean-checkouts/* .

