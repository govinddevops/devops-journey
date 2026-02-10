# Dockerized Flask App with Nginx Reverse Proxy 🚀

This project demonstrates a production-style setup where a Flask application
runs behind an Nginx reverse proxy using Docker and Docker Compose.

---

## 🛠 Tech Stack
- Python (Flask)
- Nginx
- Docker
- Docker Compose

---

## 📂 Project Structure
day17-docker-flask-nginx-project/
│
├── flask_app/
│ ├── app.py
│ ├── requirements.txt
│ └── Dockerfile
│
├── nginx/
│ └── default.conf
│
├── docker-compose.yml
└── README.md
---

## 🚀 How to Run the Project

### 1️⃣ Clone the repository
```bash
git clone <your-repo-url>
cd day17-docker-flask-nginx-project

2️⃣ Build & Run containers
docker compose up --build -d

3️⃣ Access the Application

Open browser:

http://localhost:8080


You should see:

Hello from Flask behind Nginx 
🧠 Key Learnings

Dockerizing a Flask application

Nginx as Reverse Proxy

Multi-container orchestration using Docker Compose

Service-to-service communication via Docker network

📌 Author

Govind
DevOps Learner | Linux | Docker | Cloud 
