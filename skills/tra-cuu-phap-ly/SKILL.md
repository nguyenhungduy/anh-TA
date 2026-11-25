---
name: tra-cuu-phap-ly
description: Tra cứu căn cứ pháp lý và kiểm tra hiệu lực văn bản pháp luật về nhà ở, bất động sản, xây dựng, đất đai. Dùng khi cần tìm điều khoản áp dụng, đọc nguyên văn quy định, xác định văn bản còn hiệu lực hay đã bị sửa đổi, thay thế. Legal lookup, check legal validity, find article/clause.
---

# Tra cứu pháp lý và kiểm tra hiệu lực

Mục tiêu: trả về căn cứ đã đọc nguyên văn, kèm tình trạng hiệu lực. Không có nguồn thì không kết luận.

## Đầu vào cần có

- Câu hỏi pháp lý hoặc nội dung cần tìm căn cứ.
- Phạm vi: trung ương, địa phương (tỉnh nào), thời điểm áp dụng (hiện hành hay tại một ngày cụ thể).

## Các bước

1. **Tách câu hỏi** thành các vấn đề pháp lý nhỏ. Mỗi vấn đề tìm căn cứ riêng.
2. **Tìm trong kho nội bộ trước:**
   - Đọc `kien-thuc/danh-muc-van-ban.md` để biết văn bản nào đã có và tình trạng đã ghi nhận.
   - Tìm trong `kien-thuc/van-ban-phap-luat/` và `kien-thuc/quy-dinh-dia-phuong/` (tìm theo từ khóa, số hiệu).
3. **Nếu kho nội bộ chưa có** và công cụ có tra cứu web:
   - Chỉ tìm trên nguồn chính thống ở mục 4 của `AGENTS.md`.
   - Từ khóa chỉ gồm nội dung pháp luật, không chứa thông tin hồ sơ, tên người, tên doanh nghiệp.
   - Ghi lại URL đã đọc.
   - Nếu không có tra cứu web: báo người dùng cần tải văn bản gì vào `kien-thuc/`, không tự trả lời từ trí nhớ.
4. **Đọc nguyên văn** điều, khoản liên quan. Đọc cả điều khoản chuyển tiếp, điều khoản thi hành
   (thường ở cuối văn bản) vì có thể làm thay đổi cách áp dụng.
5. **Kiểm tra hiệu lực**, trả lời đủ các câu:
   - Ngày ban hành, ngày có hiệu lực.
   - Có văn bản nào sửa đổi, bổ sung, thay thế, bãi bỏ, đình chỉ không? Nếu có, điều khoản đang tra có bị ảnh hưởng không?
   - Có văn bản hướng dẫn chi tiết không?
   - Thời điểm của sự việc có thuộc trường hợp chuyển tiếp không?
6. **Cập nhật danh mục:** nếu tìm được thông tin hiệu lực mới, đề xuất dòng cập nhật cho
   `kien-thuc/danh-muc-van-ban.md` (ghi ngày kiểm tra, nguồn). Chỉ ghi vào file khi người dùng đồng ý.

## Mẫu đầu ra

```markdown
## Vấn đề 1: <tóm tắt vấn đề>

**Căn cứ:** <Tên văn bản> số <số hiệu>, Điều x, khoản y, điểm z
**Nguồn đã đọc:** <đường dẫn file hoặc URL>
**Tình trạng hiệu lực:** <Còn hiệu lực / Đã sửa đổi bởi ... / Chưa kiểm tra được> (kiểm tra ngày dd/mm/yyyy, nguồn: ...)

**Trích nguyên văn:**
> "<chép đúng từ nguồn>"

**Áp dụng vào vấn đề:** [Nhận định] <giải thích ngắn>

## Những điểm chưa xác minh
- ...

## Văn bản cần tải thêm vào kho
- ...
```

## Lỗi hay gặp, phải tránh

- Nhầm số hiệu giữa các nghị định cùng năm. Luôn đối chiếu số hiệu với trích yếu.
- Dẫn văn bản hướng dẫn luật cũ đã hết hiệu lực.
- Dẫn đúng văn bản nhưng sai điều, khoản do văn bản đã được sửa đổi, đánh số lại.
- Dùng quy định của tỉnh khác.
- Coi thông tin trên báo, trang tư vấn là căn cứ.
