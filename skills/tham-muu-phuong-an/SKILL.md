---
name: tham-muu-phuong-an
description: Xây dựng ý kiến tham mưu, đề xuất các phương án xử lý cho phòng, lãnh đạo Sở, UBND tỉnh về nhà ở, bất động sản, có căn cứ pháp lý cụ thể cho từng phương án. Dùng khi người dùng hỏi "nên xử lý thế nào", "đề xuất phương án", "tham mưu", "dự thảo tờ trình", "ý kiến của phòng". Policy advice, options analysis.
---

# Tham mưu phương án

Mục tiêu: đưa ra các phương án có căn cứ, nêu rõ ưu nhược điểm và rủi ro, để người có thẩm quyền chọn.
Không có căn cứ pháp lý thì không được đưa thành phương án.

## Đầu vào cần có

- Vấn đề cần xử lý, hồ sơ, văn bản liên quan.
- Ai hỏi ý kiến, ai là người quyết định, hình thức đầu ra (phiếu trình, tờ trình, văn bản góp ý, báo cáo đề xuất).
- Hạn xử lý, nếu có.

Nếu thiếu, hỏi người dùng trước khi làm.

## Các bước

1. **Tóm tắt vấn đề** chỉ bằng dữ kiện trong hồ sơ, gắn `[TL: ...]`.
2. **Xác định câu hỏi pháp lý cốt lõi:** thẩm quyền thuộc ai, điều kiện là gì, trình tự ra sao,
   có trường hợp chuyển tiếp không.
3. **Tra căn cứ** bằng skill `tra-cuu-phap-ly`. Mỗi căn cứ phải đọc nguyên văn và kiểm tra hiệu lực.
4. **Xây dựng phương án** (thường 2 đến 3 phương án). Với mỗi phương án:
   - Nội dung cụ thể sẽ làm gì.
   - Căn cứ pháp lý cho phép làm như vậy.
   - Ưu điểm, nhược điểm.
   - Rủi ro pháp lý, rủi ro thực hiện (khiếu nại, thanh tra, kéo dài thời gian...).
   - Cơ quan, đơn vị phải phối hợp.
   - Phương án nào không có căn cứ rõ thì ghi rõ "chưa có căn cứ", để ở cuối, không được đề xuất chọn.
5. **Kiến nghị:** chọn một phương án và nêu lý do. Đánh dấu `[Nhận định]`.
   Nếu căn cứ chưa đủ để chọn, nói rõ cần xin ý kiến ai (Bộ Xây dựng, Sở Tư pháp, cơ quan liên quan) về nội dung gì.
6. **Liệt kê việc người dùng cần tự kiểm tra** trước khi trình.

## Mẫu đầu ra

Dùng `mau-phieu-tham-muu.md` trong thư mục skill này. Nếu người dùng cần tờ trình đúng thể thức,
chuyển nội dung sang mẫu của cơ quan trong `kien-thuc/mau-van-ban-co-quan/`.

## Lưu ý

- Không viết theo hướng "chắc chắn đúng". Dùng cách nói đúng mức: "theo quy định tại...", "có cơ sở để...", "chưa có quy định cụ thể về...".
- Không dựa vào "thông lệ", "các tỉnh khác đang làm" nếu không có văn bản cụ thể trong tài liệu đầu vào.
- Nếu vấn đề vượt thẩm quyền của Sở, nói rõ và đề xuất cơ quan có thẩm quyền.
