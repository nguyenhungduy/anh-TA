@AGENTS.md

# Phần riêng cho Claude Code

- Skill nằm ở `skills/`, Claude Code đọc qua liên kết `.claude/skills`. Nếu skill không hiện,
  chạy `scripts/lien-ket-skill.sh`.
- Đọc PDF dài: đọc theo từng khoảng trang. Trang scan không đọc được chữ thì báo người dùng,
  không đoán nội dung.
- Tra cứu web (WebSearch, WebFetch) chỉ dùng cho văn bản pháp luật, theo mục 4 của `AGENTS.md`.
  Không dán nội dung hồ sơ vào câu tìm kiếm.
- Không ghi vào `kien-thuc/` khi người dùng chưa đồng ý. Đầu ra ghi vào `cong-viec/<viec>/dau-ra/`.
- Trả lời người dùng bằng tiếng Việt.
