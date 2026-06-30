# portal

VPS上の各アプリへのリンクを並べるポータルトップページ（カード一覧・ドラッグ並べ替え対応の静的HTML）。
nginx の `location = /` が `root /var/www/portal; try_files /index.html =404;` で配信する。

## 更新方法

1. `index.html` の `APPS` 配列にカードを追加・編集
2. `git add -A && git commit -m "..." && git push`
3. `bash deploy.sh`（`/var/www/portal/index.html` に sudo cp）

nginx の location 設定（`/diary/` のようなアプリ別ルーティング）はこのリポジトリの管轄外。
`/etc/nginx/sites-enabled/` を直接 sudo 編集する（VPS固有の運用情報のため）。
