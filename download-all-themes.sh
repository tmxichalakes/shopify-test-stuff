#!/bin/bash

STORE="bobs-bike-repair-and-customization.myshopify.com"

# List themes, redirect both stdout and stderr to a file
shopify theme list --store $STORE > theme_list.txt 2>&1

# Extract theme name and ID pairs
themes=$(grep -E '^[│ ]+[^│]+[│ ]+#[0-9]{12}' theme_list.txt | sed -E 's/│//g' | awk '{name=$1; for(i=2;i<=NF-2;i++) name=name" "$i; id=$(NF); gsub("#","",id); print name":"id}')

# Loop through each theme
IFS=$'\n'
for theme in $themes; do
  name="${theme%%:*}"
  id="${theme##*:}"
  # Remove anything in parentheses or square brackets from the name
  name=$(echo "$name" | sed -E 's/ *\([^)]*\)//g' | sed -E 's/ *\[[^]]*\]//g' | sed -E 's/  +/ /g' | sed -E 's/^ +| +$//g')
  echo "Attempting to download theme '$name' (ID: $id)"
  folder="themes/$name-$id"
  mkdir -p "$folder"
  shopify theme pull --theme $id --store $STORE --path "$folder" --force
done