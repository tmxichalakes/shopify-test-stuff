#!/bin/bash

# Usage: ./push-theme.sh <theme-name>
# Example: ./push-theme.sh tEST-dAtA

if [ -z "$1" ]; then
  echo "Usage: $0 <theme-name>"
  exit 1
fi

input_name="$1"
input_name_lower=$(echo "$input_name" | tr '[:upper:]' '[:lower:]')

# Find the matching theme folder (case-insensitive, match only the alphabetic part)
theme_folder=""
for dir in themes/*/; do
  base=$(basename "$dir")
  # Extract the alphabetic part (before the last dash and numbers)
  alpha_part=$(echo "$base" | sed -E 's/-[0-9]+$//')
  alpha_part_lower=$(echo "$alpha_part" | tr '[:upper:]' '[:lower:]')
  if [ "$alpha_part_lower" = "$input_name_lower" ]; then
    theme_folder="$dir"
    break
  fi
done

if [ -z "$theme_folder" ]; then
  echo "Theme folder not found for name: $input_name"
  exit 2
fi

# Extract the theme ID from the folder name
id=$(basename "$theme_folder" | sed -E 's/.*-([0-9]+)$/\1/')

if [ -z "$id" ]; then
  echo "Could not extract theme ID from folder: $theme_folder"
  exit 3
fi

STORE="bobs-bike-repair-and-customization.myshopify.com"

# echo "shopify theme push --theme \"$id\" --store \"$STORE\" --path \"$theme_folder\""
shopify theme push --theme "$id" --store "$STORE" --path "$theme_folder" --force --allow-live
