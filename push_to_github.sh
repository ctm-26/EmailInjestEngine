#!/usr/bin/env bash
set -euo pipefail

# Run from the root of this extracted folder.
# This pushes the scaffold into your existing GitHub repo:
# https://github.com/ctm-26/EmailInjestEngine

if [ ! -d .git ]; then
  git init
fi

git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin git@github.com:ctm-26/EmailInjestEngine.git

git add .
git commit -m "Initial Inbox Kernel iOS scaffold" || true
git push -u origin main
