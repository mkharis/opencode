#!/usr/bin/env bash
set -euo pipefail

echo "==> opencode"
brew install opencode

echo "==> config"
mkdir -p ~/.config/opencode
cp opencode.jsonc ~/.config/opencode/opencode.jsonc

echo "==> skills"
npx --yes skills add mattpocock/skills

echo "==> CLI global npm"
npm i -g ui-ux-pro-max-cli @playwright/cli

echo "Selesai. Restart opencode untuk memuat plugin."
