# Trợ lý AI cho phòng Quản lý nhà ở và thị trường bất động sản

Bộ instruction và skill để dùng LLM (Claude, Codex, Gemini, ChatGPT) hỗ trợ công việc
quản lý nhà nước về nhà ở, bất động sản. Nguyên tắc chính: **không bịa, mọi ý kiến có căn cứ,
báo cáo chỉ dùng tài liệu đầu vào.**

## 1. Cấu trúc

```
anh-TA/
├── AGENTS.md                 # Instruction gốc, dùng chung (Codex đọc trực tiếp)
├── CLAUDE.md                 # Claude Code: nạp AGENTS.md + phần riêng
├── GEMINI.md                 # Gemini CLI: nạp AGENTS.md + phần riêng
├── skills/                   # Quy trình cho từng loại việc
│   ├── tra-cuu-phap-ly/
│   ├── ra-soat-doi-chieu/    # + mẫu bảng đối chiếu
│   ├── tong-hop-tai-lieu/
│   ├── tham-muu-phuong-an/   # + mẫu phiếu tham mưu
│   ├── soan-bao-cao/         # + mẫu báo cáo
│   └── kiem-tra-truoc-khi-giao/
├── .claude/skills -> skills  # liên kết cho Claude Code
├── .agents/skills -> skills  # liên kết cho Codex
├── kien-thuc/                # Kho văn bản pháp luật, quy định địa phương, mẫu của Sở
│   └── danh-muc-van-ban.md   # Danh mục và tình trạng hiệu lực
├── cong-viec/                # Mỗi việc một thư mục
│   └── _mau/                 # dau-vao/, dau-ra/, ghi-chu.md
├── prompts/
│   └── instruction-ban-web.md  # Dán vào Claude.ai / ChatGPT Projects
└── scripts/
    ├── tao-viec-moi.sh
    └── lien-ket-skill.sh
```

## 2. Các skill

| Skill | Dùng khi | Đầu ra |
|-------|----------|--------|
| `tra-cuu-phap-ly` | Tìm căn cứ, kiểm tra hiệu lực văn bản | Căn cứ + trích nguyên văn + tình trạng hiệu lực |
| `ra-soat-doi-chieu` | Kiểm tra dự thảo, hồ sơ có đúng quy định không | Bảng đối chiếu 4 mức: Phù hợp / Chưa phù hợp / Cần làm rõ / Chưa xác minh |
| `tong-hop-tai-lieu` | Gộp nhiều tài liệu, biên tập lại một tài liệu | Bản tổng hợp + bảng mâu thuẫn + bảng thay đổi |
| `tham-muu-phuong-an` | Đề xuất cách xử lý cho lãnh đạo | Phiếu tham mưu có 2 đến 3 phương án, mỗi phương án có căn cứ |
| `soan-bao-cao` | Làm báo cáo từ tài liệu có sẵn | Báo cáo + phụ lục kiểm soát nguồn |
| `kiem-tra-truoc-khi-giao` | Bước cuối của mọi việc | Danh sách lỗi đã sửa, điểm chưa xác minh |

## 3. Cài đặt lần đầu

1. **Nạp kho kiến thức.** Tải các văn bản trong `kien-thuc/danh-muc-van-ban.md` từ vbpl.vn
   vào `kien-thuc/van-ban-phap-luat/`. Thêm quyết định của UBND tỉnh, mẫu văn bản của Sở.
   Điền ngày ban hành, tình trạng hiệu lực vào danh mục (hiện đang để trống, chưa kiểm tra).
2. **Kiểm tra liên kết skill:** chạy `scripts/lien-ket-skill.sh`
   (trên Windows hoặc khi nén gửi người khác: `scripts/lien-ket-skill.sh --copy`).
3. **Chọn công cụ** theo bảng dưới.

| Công cụ | Cách dùng |
|---------|-----------|
| Claude Code (terminal, VS Code, desktop) | Mở thư mục `anh-TA`. Tự đọc `CLAUDE.md` và skill trong `.claude/skills` |
| Codex CLI | Chạy `codex` trong thư mục `anh-TA`. Tự đọc `AGENTS.md`, skill trong `.agents/skills` |
| Gemini CLI | Chạy trong thư mục `anh-TA`. Đọc `GEMINI.md`, mở skill theo bảng trong `AGENTS.md` |
| Claude.ai, ChatGPT (bản web) | Làm theo `prompts/instruction-ban-web.md` |
| Công cụ khác | Dán nội dung `AGENTS.md` làm system prompt, đính kèm file skill cần dùng |

## 4. Quy trình làm một việc

1. Tạo thư mục việc: `scripts/tao-viec-moi.sh bao-cao-noxh-quy-4`
2. Chép tài liệu vào `cong-viec/<ngay>-bao-cao-noxh-quy-4/dau-vao/`, điền `ghi-chu.md`.
3. Giao việc cho trợ lý, ví dụ:
   - "Làm việc `cong-viec/2026-11-25-bao-cao-noxh-quy-4`. Soạn báo cáo theo đề cương trong dau-vao, chỉ dùng tài liệu đầu vào."
   - "Rà soát dự thảo quyết định trong dau-vao, đối chiếu với Luật Nhà ở và các nghị định hướng dẫn."
   - "Tham mưu phương án xử lý đơn kiến nghị trong dau-vao. Cần căn cứ cụ thể cho từng phương án."
4. Đọc kết quả trong `dau-ra/`, chú ý các thẻ `[Chưa xác minh]`, `[Cần bổ sung]`, `[Mâu thuẫn]`.
5. Tự kiểm tra lại các căn cứ quan trọng trước khi trình.

## 5. Thẻ trong sản phẩm

| Thẻ | Nghĩa |
|-----|-------|
| `[VB: ...]` | Căn cứ pháp lý đã đọc nguyên văn |
| `[TL: ...]` | Dữ kiện từ tài liệu đầu vào |
| `[Nhận định]` | Ý kiến của trợ lý, cần anh/chị cân nhắc |
| `[Chưa xác minh]` | Chưa tìm được nguồn |
| `[Chưa kiểm tra hiệu lực]` | Có căn cứ nhưng chưa xác nhận còn hiệu lực |
| `[Cần bổ sung: ...]` | Tài liệu đầu vào thiếu |
| `[Mâu thuẫn: ...]` | Các nguồn ghi khác nhau |

## 6. Giới hạn cần biết

- Quy tắc trong instruction giảm mạnh nhưng **không loại bỏ hết** khả năng mô hình sai.
  Căn cứ pháp lý dùng để trình lãnh đạo luôn phải được người dùng mở bản gốc kiểm tra lại.
- Chất lượng phụ thuộc vào kho `kien-thuc/`. Thiếu văn bản thì trợ lý sẽ trả nhiều `[Chưa xác minh]`, đây là hành vi đúng.
- PDF scan chất lượng thấp có thể đọc sai số liệu. Nên OCR và soát trước.
- Không đưa tài liệu mật, thông tin cá nhân nhạy cảm của công dân lên dịch vụ AI.
  Cần làm theo quy định của cơ quan về sử dụng AI và an toàn thông tin.

## 7. Bảo trì

- Sửa quy tắc: sửa `AGENTS.md`, sau đó cập nhật khối rút gọn trong `prompts/instruction-ban-web.md`.
- Thêm skill: tạo `skills/<ten-skill>/SKILL.md` (có phần đầu `name`, `description`), thêm một dòng vào bảng mục 6 của `AGENTS.md`.
- Khi có văn bản mới, sửa đổi: cập nhật `kien-thuc/danh-muc-van-ban.md` và mục 8 của `AGENTS.md` nếu là thay đổi lớn.
