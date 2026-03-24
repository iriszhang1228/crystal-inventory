#!/bin/bash
# deploy.sh — copy latest inventory.html and push to GitHub Pages
set -e

echo "🚀 Deploying Crystal Inventory..."

cp "/Users/zhangjiamo/figma mcp/Crystal/inventory.html" ~/crystal-inventory/index.html

cd ~/crystal-inventory
git add index.html
git commit -m "Deploy: $(date '+%Y-%m-%d %H:%M')"
git push

echo "✅ Live at https://iriszhang1228.github.io/crystal-inventory"
