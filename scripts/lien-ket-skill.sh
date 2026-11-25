#!/usr/bin/env bash
# Tạo lại liên kết để Claude Code (.claude/skills) và Codex (.agents/skills) cùng đọc thư mục skills/
# Dùng khi chép project sang máy khác mà liên kết bị mất.
# Thêm tham số --copy để chép thật thay vì tạo liên kết (dùng trên Windows hoặc khi nén gửi đi).
set -euo pipefail

GOC="$(cd "$(dirname "$0")/.." && pwd)"
cd "$GOC"

for DICH in .claude/skills .agents/skills; do
  mkdir -p "$(dirname "$DICH")"
  rm -rf "$DICH"
  if [ "${1:-}" = "--copy" ]; then
    cp -R skills "$DICH"
    echo "Đã chép skills -> $DICH"
  else
    ln -s ../skills "$DICH"
    echo "Đã liên kết $DICH -> skills"
  fi
done
