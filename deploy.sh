#!/bin/bash
# FlowBoard — Deploy to GitHub + Cloudflare
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"

echo ""
echo "FlowBoard Deploy"
echo "================"
echo ""

# ── 1. GitHub push ──────────────────────────
echo "[ 1/2 ] Pushing to GitHub..."

# Init git if not already
if [ ! -d ".git" ]; then
  echo "  Initialising git repo..."
  git init
  git branch -M main
  git remote add origin https://github.com/bamah075/Flowboard.git
fi

# Make sure remote is set
git remote get-url origin &>/dev/null || \
  git remote add origin https://github.com/bamah075/Flowboard.git

git config core.ignorecase false

git add index.html flowboard-dashboard.html wrangler.json README.md 2>/dev/null || true
git add dist/ 2>/dev/null || true
git add .claude-plugin/ skills/ 2>/dev/null || true
git add flowboard-animated.gif flowboard-square.png flowboard-landscape.png 2>/dev/null || true
git add flowboard-social-card.html flowboard-social-posts.md 2>/dev/null || true

git diff --cached --quiet && echo "  Nothing new to commit." || \
  git commit -m "Deploy: FlowBoard social assets, plugin structure, animated GIF"

git push -u origin main
echo "  GitHub: https://github.com/bamah075/Flowboard"

# ── 2. Cloudflare Workers ───────────────────
echo ""
echo "[ 2/2 ] Deploying to Cloudflare Workers..."

if ! command -v wrangler &>/dev/null; then
  echo "  Installing wrangler..."
  npm install -g wrangler
fi

wrangler deploy
echo "  Live: https://flowboard.vel-ai-au.com"

echo ""
echo "Done! FlowBoard is live."
echo ""
