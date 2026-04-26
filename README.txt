# 🚀 MinIO Setup with Docker + WSL (D Drive Storage)

Run MinIO inside WSL using Docker, with all data stored on the **D drive** instead of C.

---

## 🎥 Demo

![Demo](assets/demo.gif)

---

## 📸 MinIO Console

![MinIO UI](assets/screenshot.png)

---

## 📦 Tech Stack

* Docker Desktop
* WSL (Ubuntu)
* MinIO Object Storage

---

## 📌 Version

```bash
minio/minio:RELEASE.2025-03-12T18-04-18Z
```

---

## 📁 Project Structure

```bash
minio-docker-wsl/
├── docker/
├── assets/
├── scripts/
├── .env.example
├── README.md
```

---

## ⚙️ Setup

### 1. Clone repo

```bash
git clone <your-repo-url>
cd minio-docker-wsl/docker
```

---

### 2. Create env file

```bash
cp ../.env.example .env
```

Edit `.env`:

```env
MINIO_ROOT_USER=admin
MINIO_ROOT_PASSWORD=password123
```

---

### 3. Create storage directory

```bash
mkdir -p /mnt/d/minio/data
```

---

### 4. Start MinIO

```bash
docker compose up -d
```

---

### 5. Verify

```bash
docker ps
```

---

## 🌐 Access

| Service | URL                   |
| ------- | --------------------- |
| Console | http://localhost:9001 |
| API     | http://localhost:9000 |

---

## 🔐 Credentials

* Username: admin
* Password: password123

---

## 🧪 Commands

```bash
# start
docker compose up -d

# stop
docker compose down

# logs
docker logs minio
```

---

## 💾 Storage

* Windows path:

  ```
  D:\minio\data
  ```
* WSL path:

  ```
  /mnt/d/minio/data
  ```

---

## ⚠️ Common Issues

### Permission denied (Docker)

```bash
sudo usermod -aG docker $USER
wsl --shutdown
```

---

### Docker not running

Start Docker Desktop and enable WSL integration.






