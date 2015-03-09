#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

BUILD_DATE=`date +%Y%m%d`

# Tars up the required system files and dirctories.
EXCLUDE="-exclude dev --exclude sys --exclude proc --exclude tmp"
cd /
tar czf /tmp/centos-7-${BUILD_DATE}.tar.gz ${EXCLUDE} .
