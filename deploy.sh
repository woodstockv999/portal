#!/usr/bin/env bash
# index.html を本番配信先（/var/www/portal）へ反映する。
set -euo pipefail
cd "$(dirname "$0")"
sudo cp index.html /var/www/portal/index.html
echo "deployed: /var/www/portal/index.html"
