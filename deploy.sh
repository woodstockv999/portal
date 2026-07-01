#!/usr/bin/env bash
# index.html / manifest.json / icons を本番配信先（/var/www/portal）へ反映する。
set -euo pipefail
cd "$(dirname "$0")"
sudo cp index.html /var/www/portal/index.html
sudo cp manifest.json /var/www/portal/manifest.json
sudo mkdir -p /var/www/portal/icons
sudo cp icons/icon-*.png /var/www/portal/icons/
echo "deployed: /var/www/portal/{index.html,manifest.json,icons/}"
