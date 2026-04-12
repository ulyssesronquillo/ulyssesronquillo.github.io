#!/bin/bash

##################################################
# jekyll new post
##################################################

main() {

  if [ "$#" -ne 1 ]; then
    echo "Missing argument. Usage: $0 new-post-title"
    exit
  fi

  cd ~/Code/docker/ulyme/_posts/

  title=$1
  ts=$(date +%Y-%m-%d)
  filename=($ts-$title.md)
  pretitle=$(echo "${title}")
  posttitle=$(echo $pretitle | tr "-" " ")

  cat <<EOF >$filename
---
layout: post
author: ulysses
title: '$posttitle'
---
EOF

  echo "Generating ... ~/Code/docker/ulyme/_posts/$filename"
  sleep 5
  chmod 755 ~/Code/docker/ulyme/_posts/$filename
  vi ~/Code/docker/ulyme/_posts/$filename

}

main $1
