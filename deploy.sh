#!/usr/bin/env bash
set -Eeuo pipefail

PROJECT_DIR="/mnt/c/Users/mithu/Downloads/mithun-vm-portfolio"
BRANCH="main"
PAGES_PROJECT="mithun-vm-portfolio"

cd "$PROJECT_DIR"

echo "======================================"
echo " Portfolio: Build, Git Push & Deploy"
echo "======================================"

# Verify the correct repository
REPO_ROOT="$(git rev-parse --show-toplevel)"
if [[ "$REPO_ROOT" != "$PROJECT_DIR" ]]; then
  echo "ERROR: Unexpected Git repository: $REPO_ROOT"
  exit 1
fi

CURRENT_BRANCH="$(git branch --show-current)"
if [[ "$CURRENT_BRANCH" != "$BRANCH" ]]; then
  echo "ERROR: Expected branch '$BRANCH', found '$CURRENT_BRANCH'."
  exit 1
fi

# Ensure the expected GitHub remote exists
REMOTE_URL="$(git remote get-url origin)"
if [[ "$REMOTE_URL" != "https://github.com/Mithunvm92/mithun-vm-portfolio.git" ]]; then
  echo "ERROR: Unexpected origin remote: $REMOTE_URL"
  exit 1
fi

# 1. Build first; stop if the build fails
echo
echo "[1/4] Building portfolio..."
npm run build

# 2. Stage and commit changes
echo
echo "[2/4] Preparing Git commit..."
git add -A

if ! git diff --cached --quiet; then
  COMMIT_MESSAGE="${1:-Update portfolio}"
  git commit -m "$COMMIT_MESSAGE"
else
  echo "No new changes to commit."
fi

# 3. Push to GitHub
echo
echo "[3/4] Pushing to GitHub..."
git push origin "$BRANCH"

# 4. Deploy the production build
echo
echo "[4/4] Deploying to Cloudflare Pages..."
npx wrangler pages deploy dist --project-name="$PAGES_PROJECT" --branch="$BRANCH"

echo
echo "SUCCESS: Portfolio pushed and deployment command completed."
echo "Production URL: https://${PAGES_PROJECT}.pages.dev"
