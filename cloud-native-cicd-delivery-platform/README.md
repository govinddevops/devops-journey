# 🚀 Cloud-Native CI/CD Delivery Platform 

! This project demonstrates a complete automated workflow from local development to a Kubernetes cluster.

## 🏗️ Project Architecture
1. **App:** Python Flask Application.
2. **Containerization:** Dockerized the app for consistency.
3. **CI/CD:** GitHub Actions pipeline to automatically build and push images to Docker Hub.
4. **Orchestration:** Kubernetes (Minikube) for deploying and managing the application.

## 🛠️ Tech Stack
* **Language:** Python (Flask)
* **Container:** Docker
* **Registry:** Docker Hub
* **CI/CD Tool:** GitHub Actions
* **Orchestration:** Kubernetes (K8s)

## 🚀 How to Run Locally

### 1. Docker Build & Run
\`\`\`bash
cd docker-app
docker build -t govinddevopsdocker/flask-app:latest .
docker run -p 5000:5000 govinddevopsdocker/flask-app:latest
\`\`\`

### 2. Kubernetes Deployment
\`\`\`bash
kubectl apply -f k8s-manifests/base/deployment.yaml
kubectl apply -f k8s-manifests/base/service.yaml
\`\`\`

### 3. Access the App
\`\`\`bash
minikube service flask-service --url
\`\`\`

## ✅ Key Achievements
- [x] Successful Multi-stage Docker Build.
- [x] Automated CI/CD Pipeline with GitHub Actions.
- [x] Zero-Downtime Deployment on Kubernetes.
- [x] Troubleshooting & fixing Gunicorn entry point issues.

---
**Maintained by Govind (Junior Devops Engineer)**
