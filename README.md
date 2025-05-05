# TSMC-Cloud-Native-2025_hw4

## Build the Docker image

```bash
docker build -t linchean/2025cloud:latest .
```

## Run the container

```bash
docker run --rm linchean/2025cloud:latest
```

## Container image 自動化生成

使用 Github Action 來自動根據 Dockerfile 自動 build image 並 push 到 Docker hub repo 上

觸發條件：當程式被 push 到 main branch 時 / 當針對 main branch 進行 pull request 時

### 運作流程：

  （i）登入 Docker hub

  <img width="351" alt="image" src="https://github.com/user-attachments/assets/bd3dfd38-a6bc-4fef-9201-72503323f5e9" />


  （ii）根據 Dockerfile build image 並生成 Tag
  
  <img width="583" alt="image" src="https://github.com/user-attachments/assets/a24d63cb-63f5-4b5b-9551-28ebe78269a7" />

  （iii）將 image push 到 Docker hub repo

  <img width="399" alt="image" src="https://github.com/user-attachments/assets/f008df95-76fc-469a-a3cb-3bb428abbf15" />


### Tag 生成邏輯

Github Action 生成之 Tag 為本日年月日(YYYYMMDD)

<img width="583" alt="image" src="https://github.com/user-attachments/assets/a24d63cb-63f5-4b5b-9551-28ebe78269a7" />

### Dockerfile 結構

(i)基於 python:3.12-slim iamge

(ii)創建 /app 工作目錄

(iii)複製 main.py 進入 container

(iv)設置預設執行命令 python app.py
