#!/usr/bin/env bash
set -euo pipefail

echo "==> opencode"
npm i -g opencode-ai

echo "==> skills"
npx --yes skills update -g -y

echo "==> CLI global npm"
npm i -g ui-ux-pro-max-cli @playwright/cli

echo "==> plugins (hapus cache → fetch ulang saat opencode start)"
rm -rf ~/.cache/opencode/packages/superpowers@git+https: \
       ~/.cache/opencode/packages/@dietrichgebert

echo "Selesai. Restart opencode untuk memuat plugin."
