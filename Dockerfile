# 使用官方 Python 3.12 基礎映像檔
FROM python:3.12-slim

RUN /bin/bash -c "echo 'Triggering build failure' && exit 1"

# 設定工作目錄（可選）
WORKDIR /app

# 複製你的專案檔案進入容器
COPY . .

# 安裝相依套件（如果有 requirements.txt）
# RUN pip install --upgrade pip \
#  && pip install -r requirements.txt

# 預設執行指令（例如啟動 app.py）
CMD ["python", "app.py"]
