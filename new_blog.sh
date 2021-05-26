#!/bin/bash
if [ $# -ne 1 ]
then echo "$0 TITLE"
    exit 1
fi
title="$1"
filename="$(dirname "$(readlink -f "$0")")/docs/_posts/"
filename+="$(date +%Y-%m-%d-)"
filename+="$(sed 's/ /-/g;s/[^0-9a-zA-Z-]*//g' <<< "$title")"
filename+='.markdown'

if ! [ -f "$filename" ]
then cat > "$filename" <<EOF
---
layout: post
title:  "$title"
date:   $(date +%Y-%m-%d\ %H:%M:%S) +0800
categories: writeup
---
EOF
fi
vi "$filename"

