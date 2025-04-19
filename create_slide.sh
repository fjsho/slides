#!/bin/bash

# Get the current date in yyyyMMdd format
current_date=$(date +"%Y%m%d")

# Prompt for slide name
read -p "Enter slide name: " slide_name

# Create the directory structure
slide_dir="./${current_date}_${slide_name}"
mkdir -p "${slide_dir}/assets"

# Create index.md with the specified content
cat <<EOL > "${slide_dir}/index.md"
---
marp: true
---

# ${slide_name}

EOL

echo "Slide directory and files created at: ${slide_dir}"