#!/usr/bin/env bash
set -euo pipefail
branch=${1:-site-refresh}

echo "==> Creating branch: $branch"
git checkout -b "$branch"

echo "==> Unpacking kit into repo root"
unzip -o secrierlab_site_fix_kit_v2.zip

echo "==> Adding files"
git add _config.yml _data/navigation.yml _includes/nav.html _includes/footer.html   _layouts/default.html _layouts/page.html _layouts/post.html   blog/index.md _posts/2025-08-29-histomil.md misc/about.md misc/contact.md   admin/index.html admin/config.yml .github/workflows/jekyll.yml README_UPGRADE.md robots.txt

echo "==> Commit"
git commit -m "Refresh scaffolding, fix blog, add CMS + Pages Actions"

echo "==> Push"
git push -u origin "$branch"

if command -v gh >/dev/null 2>&1; then
  echo "==> Creating PR with GitHub CLI"
  gh pr create --title "Refresh scaffolding, fix blog, add CMS + Pages Actions" --body-file PR_BODY.md
else
  echo "==> gh CLI not found. Open a PR in GitHub UI from branch $branch."
fi

echo "Done."
