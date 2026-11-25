#!/usr/bin/env bash
# Tạo thư mục cho một việc mới từ mẫu cong-viec/_mau
# Cách dùng: scripts/tao-viec-moi.sh "bao-cao-noxh-quy-4"
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Cách dùng: $0 <ten-viec-khong-dau>"
  exit 1
fi

GOC="$(cd "$(dirname "$0")/.." && pwd)"
TEN="$(date +%Y-%m-%d)-$1"
DICH="$GOC/cong-viec/$TEN"

if [ -e "$DICH" ]; then
  echo "Đã có thư mục: $DICH"
  exit 1
fi

cp -R "$GOC/cong-viec/_mau" "$DICH"
echo "Đã tạo: cong-viec/$TEN"
echo "Bước tiếp: chép tài liệu vào cong-viec/$TEN/dau-vao/ và điền cong-viec/$TEN/ghi-chu.md"
