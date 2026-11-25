---
name: tong-hop-tai-lieu
description: Tổng hợp nhiều tài liệu thành một bản thống nhất, hoặc hoàn thiện một tài liệu (biên tập văn phong, bố cục, thể thức, chuẩn hóa số liệu và thuật ngữ) mà không thêm thông tin ngoài tài liệu gốc. Dùng khi người dùng nhờ "tổng hợp", "gộp", "hoàn thiện", "biên tập", "chỉnh sửa lại" tài liệu. Merge, consolidate, edit documents.
---

# Tổng hợp, hoàn thiện tài liệu

Mục tiêu: một bản tài liệu gọn, thống nhất, giữ đúng nội dung gốc. Mọi thay đổi về nội dung đều phải truy được nguồn.

## Đầu vào cần có

- Các tài liệu nguồn (trong `cong-viec/<viec>/dau-vao/` hoặc người dùng gửi).
- Mục đích của bản tổng hợp và người đọc (lãnh đạo phòng, lãnh đạo Sở, UBND tỉnh, Bộ Xây dựng...).
- Bố cục mong muốn hoặc mẫu (nếu có).

## Các bước

1. **Lập danh sách tài liệu nguồn:** tên file, cơ quan, số, ngày, đọc được hay không.
   Gán mã ngắn cho mỗi tài liệu (TL1, TL2...) để gắn nguồn.
2. **Trích ý theo chủ đề.** Mỗi ý ghi rõ đến từ tài liệu nào, trang nào.
3. **Phát hiện trùng lặp và mâu thuẫn:**
   - Trùng: giữ một lần, ghi nguồn đầy đủ.
   - Mâu thuẫn (số liệu, ngày, tên dự án khác nhau): không tự chọn. Ghi `[Mâu thuẫn: ...]` và đưa vào danh sách hỏi người dùng.
   - Số liệu khác thời điểm: giữ cả hai, ghi rõ thời điểm.
4. **Dựng bố cục** theo mẫu người dùng đưa, hoặc theo bố cục thông dụng của loại văn bản đó.
5. **Viết bản tổng hợp:**
   - Chỉ dùng thông tin từ tài liệu nguồn (quy tắc R5 trong `AGENTS.md`).
   - Được phép: sắp xếp lại, rút gọn câu, thống nhất thuật ngữ, đơn vị, cách viết số.
   - Không được phép: thêm số liệu, thêm nhận xét, thêm căn cứ pháp lý không có trong nguồn,
     làm mạnh hoặc làm nhẹ mức độ của một nhận định (ví dụ đổi "chậm tiến độ" thành "cơ bản đúng tiến độ").
   - Nếu thấy cần bổ sung căn cứ pháp lý, đề xuất riêng ở cuối, có thẻ `[Nhận định]`, không chèn vào thân văn bản.
6. **Khi hoàn thiện một tài liệu có sẵn:** đưa ra bản đã sửa và một bảng các thay đổi về nội dung
   (không cần liệt kê sửa chính tả).

## Mẫu đầu ra

```markdown
# <Tên tài liệu tổng hợp>

<thân tài liệu, gắn thẻ [TL: ...] sau mỗi dữ kiện>

---
## Phụ lục kiểm soát (không in kèm bản chính thức)

### Tài liệu nguồn
| Mã | Tên tài liệu | Số, ngày | Đọc được |
|----|--------------|----------|----------|

### Mâu thuẫn cần người dùng quyết định
| STT | Nội dung | Nguồn A ghi | Nguồn B ghi |
|-----|----------|-------------|-------------|

### Thay đổi về nội dung so với bản gốc (nếu là hoàn thiện tài liệu)
| STT | Vị trí | Bản gốc | Bản sửa | Lý do |
|-----|--------|---------|---------|-------|

### Thông tin còn thiếu
- [Cần bổ sung: ...]
```
