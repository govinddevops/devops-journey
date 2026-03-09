# Nginx Helm Chart - DevOps Project

## 🏗️ Introduction
This Helm chart automates the deployment of an Nginx web server on a Kubernetes cluster. It is designed to demonstrate modular application management.

## 📁 Chart Structure
- **Chart.yaml**: Metadata about the chart (version, name).
- **values.yaml**: Default configuration for the deployment.
- **templates/**: Kubernetes manifest templates (Deployment, Service).

## 🚀 Usage Instructions

### 1. Validate the Chart
Check for syntax errors:
\`\`\`bash
helm lint .
\`\`\`

### 2. Dry Run (Test before Deploy)
See what will be installed without actually deploying:
\`\`\`bash
helm install my-nginx . --dry-run --debug
\`\`\`

### 3. Deploy the Chart
\`\`\`bash
helm install my-nginx .
\`\`\`

### 4. Verify Installation
\`\`\`bash
helm list
kubectl get pods -l "app.kubernetes.io/instance=my-nginx"
\`\`\`

### 5. Cleanup
\`\`\`bash
helm uninstall my-nginx
\`\`\`

---
*Maintained by: Junior DevOps Engineer (Govind)*

