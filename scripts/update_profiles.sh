#!/bin/bash

SCRIPT=$(realpath $0)
TEMP_DIR="$(dirname $SCRIPT)/templates"

for module in $TEMP_DIR/*; do
  if [ -d $module ]; then
    echo $module
    for component in $module/_*; do
      component_path=$(cat $component)
      component_name=$(basename $component | sed "s/^\_//")
      cat $(dirname $component)/$component_name > $component_path
    done
  fi
done

