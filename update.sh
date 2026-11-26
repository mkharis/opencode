#!/usr/bin/env bash
set -euo pipefail

echo "==> opencode"
brew upgrade opencode

echo "==> skills"
npx --yes skills update -g -y

echo "==> CLI global npm"
npm i -g ui-ux-pro-max-cli @playwright/cli

echo "Selesai. Config dimuat otomatis; pakai /reload kalau perlu."
