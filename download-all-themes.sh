#!/bin/bash

STORE="bobs-bike-repair-and-customization.myshopify.com"





# List themes, redirect both stdout and stderr to a file, then extract all theme IDs matching pattern #123456789012
shopify theme list --store $STORE > theme_list.txt 2>&1
theme_ids=$(grep -oE '#[0-9]{12}' theme_list.txt | tr -d '#')

for id in $theme_ids; do
  echo "Attempting to download theme ID: $id"
  folder="themes/$id"
  mkdir -p "$folder"
  shopify theme pull --theme $id --store $STORE --path "$folder" --force
done