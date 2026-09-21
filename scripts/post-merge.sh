#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."

required_files=(
  "index.html"
  "portfolio.html"
  "resume.html"
  "style.css"
)

for file in "${required_files[@]}"; do
  test -f "$file"
done

echo "Post-merge setup complete: required static site files are present."