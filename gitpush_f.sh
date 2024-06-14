#!/bin/bash

[ $# -gt 0 ] && {
  commitInfo=$1
}||{
    commitInfo="update"
}

git add .
git commit -m "`date '+%Y/%m/%d %H:%M:%S'` `whoami` $commitInfo"
git push origin main -f
git log|head -n 20
