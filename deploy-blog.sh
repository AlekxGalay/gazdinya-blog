#!/bin/bash
# Deploy blog to gazdinya.com/blog/ AND push to GitHub Pages
set -e

BLOG_DIR="/opt/gazdinya-blog"
SITE_OUTPUT="/var/www/gazdinya.com/blog"
GH_CONFIG="$BLOG_DIR/_config_gh.yml"
LOG="/var/log/blog-deploy.log"

echo "$(date) === Blog deploy started ===" >> "$LOG"

cd "$BLOG_DIR"

# 1. Build for gazdinya.com/blog/ (primary)
echo "$(date) Building for gazdinya.com..." >> "$LOG"
JEKYLL_ENV=production bundle exec jekyll build --destination "$SITE_OUTPUT" 2>> "$LOG"
echo "$(date) Built to $SITE_OUTPUT" >> "$LOG"

# 2. Push to GitHub Pages (mirror — GH builds with its own config)
git add -A
if git diff --cached --quiet; then
  echo "$(date) No changes to push" >> "$LOG"
else
  git commit -m "Update blog $(date +%Y-%m-%d)" 2>> "$LOG"
  git push origin main 2>> "$LOG"
  echo "$(date) Pushed to GitHub" >> "$LOG"
fi

echo "$(date) === Blog deploy done ===" >> "$LOG"
