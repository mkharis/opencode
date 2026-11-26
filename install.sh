#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

echo "==> opencode"
brew install opencode

echo "==> config"
mkdir -p ~/.config/opencode
cp opencode.jsonc ~/.config/opencode/opencode.jsonc
cp cli.json ~/.config/opencode/cli.json

echo "==> skills"
npx --yes skills add -g mattpocock/skills

echo "==> CLI global npm"
npm i -g ui-ux-pro-max-cli @playwright/cli

echo "Selesai. Config dimuat otomatis; pakai /reload kalau perlu."
