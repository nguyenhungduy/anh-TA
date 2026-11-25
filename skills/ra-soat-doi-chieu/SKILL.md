---
name: ra-soat-doi-chieu
description: Rà soát, kiểm tra tính đúng đắn của dự thảo văn bản, hồ sơ, báo cáo bằng cách đối chiếu từng nội dung với luật, nghị định, thông tư và quy định địa phương. Dùng khi người dùng nhờ "kiểm tra", "rà soát", "góp ý", "đối chiếu quy định", thẩm định sơ bộ hồ sơ. Legal compliance review, cross-check against regulations.
---

# Rà soát, đối chiếu với quy định

Mục tiêu: chỉ ra từng điểm trong tài liệu đúng, chưa đúng, hay chưa xác minh được, mỗi điểm có căn cứ.

## Đầu vào cần có

- Tài liệu cần rà soát (dự thảo, hồ sơ, báo cáo).
- Mục đích rà soát: góp ý dự thảo, thẩm định hồ sơ, kiểm tra báo cáo của đơn vị khác...
- Phạm vi: rà toàn bộ hay chỉ một số nội dung. Nếu không rõ, hỏi người dùng.

## Các bước

1. **Đọc toàn bộ tài liệu.** Ghi lại trang, mục không đọc được.
2. **Tách tài liệu thành các nội dung cần kiểm tra.** Ưu tiên:
   - Căn cứ pháp lý được viện dẫn (số hiệu, tên, điều khoản có đúng không, còn hiệu lực không).
   - Thẩm quyền (cơ quan nào ban hành, phê duyệt, chấp thuận).
   - Điều kiện, đối tượng, tiêu chí (ví dụ điều kiện mua nhà ở xã hội, điều kiện kinh doanh bất động sản).
   - Trình tự, thủ tục, thời hạn.
   - Thành phần hồ sơ.
   - Số liệu (cộng tổng, tỷ lệ, đơn vị, khớp giữa các phần).
   - Thể thức văn bản.
3. **Với mỗi nội dung:** dùng skill `tra-cuu-phap-ly` để tìm căn cứ và kiểm tra hiệu lực.
4. **Đánh giá** theo bốn mức, không dùng mức khác:
   - `Phù hợp`: có căn cứ, nội dung khớp.
   - `Chưa phù hợp`: có căn cứ, nội dung khác với quy định. Phải nêu khác ở đâu.
   - `Cần làm rõ`: quy định có nhiều cách hiểu, hoặc tài liệu viết chưa đủ để đánh giá.
   - `Chưa xác minh`: chưa tìm được căn cứ hoặc chưa đọc được văn bản gốc.
5. **Kiểm tra số liệu nội bộ:** tổng có khớp chi tiết không, cùng chỉ tiêu ở các phần có cùng số không.
6. **Đề xuất sửa** cho các mục `Chưa phù hợp` và `Cần làm rõ`. Đề xuất phải bám vào căn cứ, không thêm nội dung mới ngoài phạm vi tài liệu.

## Mẫu đầu ra

Dùng mẫu `mau-bang-doi-chieu.md` trong thư mục skill này.

## Lưu ý

- Không sửa trực tiếp tài liệu gốc. Đưa ra bảng đối chiếu và bản đề xuất sửa riêng.
- Nếu tài liệu viện dẫn một văn bản mà bạn không tìm được, ghi `Chưa xác minh`, không được kết luận là văn bản đó không tồn tại.
- Phân biệt lỗi pháp lý (sai căn cứ, sai thẩm quyền) với lỗi trình bày (chính tả, thể thức). Lỗi pháp lý xếp trước.
