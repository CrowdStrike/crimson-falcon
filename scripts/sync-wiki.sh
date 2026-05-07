#!/usr/bin/env bash
set -euo pipefail

DOCS_DIR="docs"
WIKI_REPO_URL="${WIKI_REPO_URL:-https://github.com/CrowdStrike/crimson-falcon.wiki.git}"
DRY_RUN="${DRY_RUN:-0}"

if [ ! -d "$DOCS_DIR" ] || [ -z "$(ls -A "$DOCS_DIR" 2>/dev/null)" ]; then
  echo "Error: $DOCS_DIR is empty or missing. Run 'make generate' first." >&2
  exit 1
fi

WORK_DIR=$(mktemp -d)
trap 'rm -rf "$WORK_DIR"' EXIT

echo "Cloning wiki repo..."
git clone --depth 1 "$WIKI_REPO_URL" "$WORK_DIR" 2>/dev/null

# Remove all existing markdown files (handles deleted APIs/models)
find "$WORK_DIR" -maxdepth 1 -name "*.md" -delete

# Copy generated docs into wiki checkout
cp "$DOCS_DIR"/*.md "$WORK_DIR/"

# Generate Home.md from API docs (files containing "All URIs are relative to")
echo "Generating Home.md..."
{
  echo "# Crimson Falcon Ruby SDK - API Documentation"
  echo ""
  echo "Auto-generated API documentation for the [CrowdStrike Crimson Falcon](https://github.com/CrowdStrike/crimson-falcon) Ruby SDK."
  echo ""
  echo "## Service APIs"
  echo ""
  grep -rl "All URIs are relative to" "$WORK_DIR"/*.md 2>/dev/null \
    | xargs -I{} basename {} .md \
    | sort \
    | while read -r name; do
        echo "- [$name]($name)"
      done
} > "$WORK_DIR/Home.md"

# Generate _Sidebar.md for persistent wiki navigation
echo "Generating _Sidebar.md..."
{
  echo "**[Home](Home)**"
  echo ""
  echo "**Service APIs**"
  echo ""
  grep -rl "All URIs are relative to" "$WORK_DIR"/*.md 2>/dev/null \
    | xargs -I{} basename {} .md \
    | sort \
    | while read -r name; do
        echo "- [$name]($name)"
      done
} > "$WORK_DIR/_Sidebar.md"

cd "$WORK_DIR"

if git diff --quiet && [ -z "$(git ls-files --others --exclude-standard)" ]; then
  echo "No changes to publish."
  exit 0
fi

SOURCE_SHA=$(git -C "${OLDPWD}" rev-parse --short HEAD 2>/dev/null || echo "unknown")
COMMIT_MSG="docs: sync generated API docs from ${SOURCE_SHA}"

git add -A
git commit -m "$COMMIT_MSG"

if [ "$DRY_RUN" = "1" ]; then
  echo "[DRY RUN] Would push the following commit:"
  git log --oneline -1
  echo "Files changed:"
  git diff --stat HEAD~1
else
  echo "Pushing to wiki..."
  git push origin master
  echo "Wiki updated successfully."
fi
