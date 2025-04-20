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
theme: gaia

header: '${slide_name}'
footer: '@fujishiro'

size: 16:9
headingDivider: 1
paginate: true
---

<!-- タイトル用書式：色反転＋中央寄せ -->
<!-- _class : lead invert-->

# ${slide_name}

EOL

echo "Slide directory and files created at: ${slide_dir}"