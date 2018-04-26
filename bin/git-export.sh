#!/bin/bash

if [ -z "$1" ]
then
  echo "usage: git-export <project-name> <branch-name|master>"
  exit
fi
site_name=$1

if [ -z "$2" ]
then
  branch='master'
else
  branch=$2
fi

export_dir="/tmp/exports"
site_dir="${HOME}/src"
revision=$(git --git-dir=$site_dir/$site_name/.git rev-parse $branch)

echo "Export de $site_name@$revision"
rm -rf $export_dir/$site_name/
rm "$export_dir/$site_name"*.tgz
mkdir -p $export_dir/$site_name
git archive $revision | tar -x -C $export_dir/$site_name/
echo $revision > $export_dir/$site_name/VERSION.txt
cd $export_dir/$site_name
tar -czf $export_dir/$site_name-$revision.tgz ./*
exit

