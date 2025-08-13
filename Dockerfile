# Dòng này chọn image mẫu từ Python phiên bản 3.12 (slim nghĩa là nhẹ, tiết kiệm dung lượng)
FROM python:3.12-slim

# Thiết lập thư mục làm việc bên trong container
WORKDIR /app

# Copy toàn bộ code dự án từ máy bạn vào container
COPY . /app

# Cài đặt các thư viện cần thiết từ file requirements.txt (bạn sẽ tạo file này ở bước sau)
RUN pip install --no-cache-dir -r requirements.txt

# Lệnh mặc định khi chạy container: chạy file main.py (sau này bạn thay bằng file chính của dự án)
CMD ["python", "main.py"]