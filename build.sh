#!/bin/bash

get_build_date() {
  date +%d%m%y
}

version="2.3"
build_date=$(get_build_date)
output_file="Risk-${version}.${build_date}-release.zip"

zip -r $output_file uninstall.sh system.prop service.sh README.md module.prop LICENSE install.sh excluded_apps.txt system/ META-INF/

if [ $? -eq 0 ]; then
  echo "Build successful: $output_file"
else
  echo "Build failed"
fi
