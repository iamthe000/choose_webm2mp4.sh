# choose_webm2mp4.sh

A tiny interactive Bash script that lets you pick any `.webm` file with **fzf** and convert it to **MP4 (H.264 + AAC)** using **ffmpeg**.
The script automatically fixes odd-numbered resolutions by forcing the width/height to even numbers—super handy when ffmpeg refuses to encode.

---

## Features

* 🎥 Pick a `.webm` file via `fzf`
* 🔄 Converts WebM → MP4 using `libx264` + AAC
* ✨ Automatically adjusts resolution to even numbers
* 🚀 Adds `-movflags +faststart` for better streaming
* 🛠 Simple, portable, dependency-only script

---

## Requirements

* `ffmpeg`
* `fzf`
* A POSIX-compatible shell (e.g., bash, ash, zsh)

---

## Usage

```bash
./choose_webm2mp4.sh
```

Then select the `.webm` file interactively.

---

## Example

```
🎥 Select a .webm to convert:
> my_video.webm

🔄 Converting: my_video.webm → my_video.mp4
✅ Done: my_video.mp4
```

---

## License

MIT License
(See repository; the script itself already includes the license.)

---

# choose_webm2mp4.sh(日本語README

`fzf` を使って任意の `.webm` を選択し、`ffmpeg` で **MP4 (H.264 + AAC)** に変換するための小さな Bash スクリプトです。
ffmpeg がエラーを出しがちな「奇数サイズ（幅・高さ）」も、自動で偶数に補正します。

---

## 特徴

* 🎥 `fzf` を使って `.webm` をインタラクティブに選択
* 🔄 WebM → MP4（H.264 + AAC）へ変換
* ✨ 映像サイズを自動で偶数に補正
* 🚀 ストリーミングに便利な `+faststart` を付与
* 🛠 依存コマンドだけで動く軽量スクリプト

---

## 必要なもの

* `ffmpeg`
* `fzf`
* bash / ash / zsh など POSIX 互換のシェル

---

## 使い方

```bash
./choose_webm2mp4.sh
```

あとは対話的に `.webm` ファイルを選ぶだけ。

---

## 実行例

```
🎥 変換する .webm を選択してください:
> sample.webm

🔄 変換中: sample.webm → sample.mp4
✅ 変換完了: sample.mp4
```

---

## ライセンス

MIT License
