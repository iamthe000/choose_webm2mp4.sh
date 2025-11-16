#!/usr/bin/env bash
# choose_webm2mp4.sh
# 任意の .webm を選択して mp4 に変換（偶数サイズ補正あり）

if ! command -v ffmpeg >/dev/null 2>&1; then
  echo "❌ ffmpeg が見つかりません。"
  exit 1
fi

if ! command -v fzf >/dev/null 2>&1; then
  echo "❌ fzf が見つかりません。"
  echo "例: apk add fzf"
  exit 1
fi

FILE=$(find . -type f -iname "*.webm" | fzf --prompt="🎥 変換する .webm を選択してください: ")
if [ -z "$FILE" ]; then
  echo "キャンセルされました。"
  exit 0
fi

OUT="${FILE%.*}.mp4"

echo "🔄 変換中: $FILE → $OUT"

ffmpeg -y -i "$FILE" \
  -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" \
  -c:v libx264 -crf 23 -preset medium \
  -c:a aac -b:a 128k -movflags +faststart "$OUT"

if [ $? -eq 0 ]; then
  echo "✅ 変換完了: $OUT"
else
  echo "❌ 変換に失敗しました。"
fi