---
name: soan-bao-cao
description: Soạn báo cáo, bảng tổng hợp, tài liệu tổng kết từ tài liệu đầu vào theo nguyên tắc đóng (chỉ dùng thông tin có trong tài liệu đầu vào, không thêm số liệu hay nhận định từ bên ngoài). Dùng khi người dùng nhờ "làm báo cáo", "báo cáo tình hình", "tổng hợp số liệu", "báo cáo định kỳ", "báo cáo kết quả". Report drafting from provided sources only.
---

# Soạn báo cáo từ tài liệu đầu vào

Nguyên tắc: **chỉ dùng tài liệu đầu vào**. Mỗi câu có dữ kiện phải truy được về một tài liệu, một trang.
Đây là quy tắc R5 trong `AGENTS.md`, áp dụng nghiêm cho skill này.

## Đầu vào cần có

- Tài liệu đầu vào trong `cong-viec/<viec>/dau-vao/` (hoặc người dùng gửi).
- Loại báo cáo, kỳ báo cáo, nơi nhận, mẫu hoặc đề cương (nếu có, ví dụ đề cương do Bộ hoặc UBND tỉnh yêu cầu).

## Các bước

1. **Khóa phạm vi nguồn.** Lập danh sách tài liệu đầu vào, gán mã TL1, TL2... Báo cáo chỉ được dùng các tài liệu này.
   Nếu người dùng muốn thêm nguồn, phải đưa nguồn đó vào danh sách trước.
2. **Đọc đề cương hoặc mẫu.** Nếu có đề cương bắt buộc, giữ đúng thứ tự và tên mục của đề cương.
3. **Lập bảng dữ kiện** trước khi viết (lưu tạm trong phụ lục): chỉ tiêu, giá trị, đơn vị, thời điểm, nguồn.
4. **Viết báo cáo** từ bảng dữ kiện:
   - Mục nào trong đề cương không có dữ liệu: ghi `[Cần bổ sung: ...]`, không viết chung chung để lấp mục.
   - Không tự tính chỉ tiêu mới nếu người dùng không yêu cầu. Nếu có tính (tổng, tỷ lệ, so với cùng kỳ),
     ghi rõ công thức và số dùng để tính.
   - Phần đánh giá, nhận xét: chỉ dùng nhận xét có sẵn trong tài liệu đầu vào. Nếu người dùng yêu cầu
     trợ lý tự đánh giá, đặt trong mục riêng và gắn `[Nhận định]`.
   - Phần kiến nghị, đề xuất: chỉ đưa những kiến nghị có trong tài liệu đầu vào, hoặc do người dùng nêu.
   - Không viện dẫn văn bản pháp luật nếu văn bản đó không có trong tài liệu đầu vào.
     Nếu cần viện dẫn, hỏi người dùng hoặc dùng `tra-cuu-phap-ly` và ghi rõ là nguồn bổ sung.
5. **Đối chiếu ngược:** đi từng câu có dữ kiện trong báo cáo, kiểm tra lại với nguồn. Câu nào không tìm được nguồn thì xóa hoặc chuyển thành `[Cần bổ sung]`.
6. Chạy `kiem-tra-truoc-khi-giao`.

## Mẫu đầu ra

Dùng `mau-bao-cao.md` trong thư mục skill này nếu người dùng không đưa đề cương riêng.

## Ví dụ đúng và sai

| Sai | Đúng |
|-----|------|
| "Thị trường bất động sản trên địa bàn có dấu hiệu phục hồi." (không có trong tài liệu) | "Theo báo cáo của ..., số giao dịch quý III/2026 là ... giao dịch [TL2, tr.3]." |
| "Tổng cộng khoảng 3.000 căn." (làm tròn tự ý) | "Tổng cộng 2.987 căn [TL1, tr.5]." |
| Bỏ trống mục "Khó khăn, vướng mắc" bằng câu chung chung | "[Cần bổ sung: tài liệu đầu vào chưa có nội dung về khó khăn, vướng mắc]" |
