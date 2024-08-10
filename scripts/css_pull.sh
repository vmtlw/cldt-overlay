#!/bin/bash
shortname=${1:-cls}
url=https://mirror.calculate-linux.org/release
RELEASE=$(curl -s $url/ | grep -Eo 202.[0-9]...| sort -u | tail -1)
wget -q --show-progress $url/$RELEASE/$shortname-$RELEASE-x86_64.iso


