---
name: kiem-tra-truoc-khi-giao
description: Bước tự kiểm tra bắt buộc trước khi giao bất kỳ sản phẩm nào (báo cáo, phiếu tham mưu, kết quả rà soát, bản tổng hợp) nhằm phát hiện thông tin bịa, trích dẫn sai, số liệu không có nguồn, văn bản hết hiệu lực. Dùng ở cuối mọi việc, hoặc khi người dùng nhờ "kiểm tra lại", "soát lỗi". Final self-check, anti-hallucination review.
---

# Kiểm tra trước khi giao

Làm sau khi đã có bản dự thảo, trước khi báo hoàn thành. Kiểm tra bằng cách **mở lại nguồn**, không kiểm tra bằng trí nhớ.

## Danh sách kiểm tra

### A. Căn cứ pháp lý
- [ ] Mỗi văn bản được nhắc đến: số hiệu và trích yếu khớp với nhau, đã đối chiếu với bản gốc hoặc nguồn chính thống.
- [ ] Mỗi điều, khoản, điểm được dẫn: đã mở lại và thấy đúng nội dung đó.
- [ ] Mỗi đoạn trong ngoặc kép: chép đúng nguyên văn.
- [ ] Mỗi văn bản: đã ghi tình trạng hiệu lực, hoặc gắn `[Chưa kiểm tra hiệu lực]`.
- [ ] Không có văn bản hướng dẫn luật cũ đã hết hiệu lực (xem mục 8 `AGENTS.md`).
- [ ] Thẩm quyền nêu trong văn bản phù hợp với tổ chức chính quyền hiện hành.

### B. Dữ kiện, số liệu
- [ ] Mỗi số liệu có thẻ `[TL: ...]` và khớp với nguồn khi mở lại.
- [ ] Không có số liệu, tên dự án, tên đơn vị, ngày tháng nào không có trong nguồn.
- [ ] Tổng khớp với chi tiết. Đơn vị và thời điểm ghi đủ.
- [ ] Số do trợ lý tính có công thức kèm theo.
- [ ] Mâu thuẫn giữa các nguồn đã được ghi `[Mâu thuẫn: ...]`, không tự chọn một bên.

### C. Phạm vi
- [ ] Với báo cáo, tổng hợp: không có thông tin nào từ ngoài danh sách tài liệu đầu vào.
- [ ] Nhận định của trợ lý đều có thẻ `[Nhận định]`, tách khỏi dữ kiện.
- [ ] Không làm mạnh hoặc làm nhẹ mức độ của nhận định so với tài liệu gốc.

### D. Trình bày
- [ ] Đúng bố cục, đề cương được yêu cầu.
- [ ] Không có dấu gạch ngang dài (em dash), không emoji.
- [ ] Viết tắt có giải thích ở lần đầu.

### E. Giới hạn
- [ ] Có mục "Giới hạn" liệt kê: phần không đọc được, căn cứ chưa xác minh, thông tin còn thiếu.

## Cách xử lý khi phát hiện lỗi

| Phát hiện | Xử lý |
|-----------|-------|
| Căn cứ không tìm lại được trong nguồn | Xóa căn cứ, hoặc chuyển thành `[Chưa xác minh]` và nêu trong mục Giới hạn |
| Số liệu không có nguồn | Xóa, thay bằng `[Cần bổ sung: ...]` |
| Trích dẫn không đúng nguyên văn | Chép lại đúng, hoặc bỏ ngoặc kép và ghi "đại ý" |
| Văn bản đã hết hiệu lực | Tìm văn bản thay thế bằng `tra-cuu-phap-ly`, sửa lại lập luận |

## Báo cáo kết quả kiểm tra cho người dùng

Cuối câu trả lời, ghi ngắn:

```markdown
**Kết quả tự kiểm tra:** đã đối chiếu <n> căn cứ, <m> số liệu.
- Đã sửa: ...
- Còn chưa xác minh: ...
- Anh/chị cần tự kiểm tra lại: ...
```
