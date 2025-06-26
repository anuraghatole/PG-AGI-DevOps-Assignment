🛠️ DevOps Assignment
---
This repository contains a 2-tier application with a FastAPI backend and a Next.js frontend. The project demonstrates Infrastructure as Code, containerization, CI/CD pipelines, secure deployment on AWS, and monitoring — covering the full DevOps lifecycle.
---
## 🌿 Branching Strategy

We follow a Git Flow-based branching strategy:

- `main` – Stable production-ready code.
- `develop` – Integration branch for feature development.
- `pr-review` – Temporary branches for peer review before merge.
- `feature/<feature-name>` – Feature-specific branches created from `develop`.
---
## 📁 Project Structure

```plaintext
.github/workflows/         # CI/CD pipeline
backend/                   # FastAPI backend
  ├── app/
  │   └── main.py
  ├── test_scripts/
  │   └── test_main.py
  ├── requirements.txt
  └── Dockerfile
frontend/                  # Next.js frontend
  ├── pages/
  │   └── index.js
  ├── test_scripts/
  │   └── Home.test.js
  ├── package.json
  ├── .env.local
  └── Dockerfile
infra/terraform/           # Terraform infrastructure (ECS, ALB, IAM, VPC)
  ├── main.tf
  ├── variables.tf
  ├── modules/
  └── ...
docker-compose.yml         # For local testing
```
---

## 🌍 Hosted Application URLs

- 🔗 **Frontend**: http://devops-infra-alb-1706040250.ap-south-1.elb.amazonaws.com/
- 🩺 **Backend Health**: http://devops-infra-alb-1706040250.ap-south-1.elb.amazonaws.com/api/health

---
Both services are containerized with Docker and deployed via ECS Fargate.
---
 🐳 Docker Images (Pushed to AWS ECR)

- **Frontend Image**:  
  `public.ecr.aws/r3c4o3m2/pg-agi-devops-assignment-frontend:560fa5c`
- **Backend Image**:  
  `public.ecr.aws/r3c4o3m2/pg-agi-devops-assignment-backend:f4cb7a8`
---
🔁 CI/CD Workflow CI/CD pipeline is managed via GitHub Actions:

* install dependencies, build app, test, and build both frontend and backend image

* Docker image build and push to ECR

* Auto-deploy to ECS on merge to main
---
📦 Infrastructure is provisioned using Terraform:

* AWS ECS Fargate for container hosting

* ALB (Application Load Balancer)

* VPC, subnets, security groups

* IAM roles and task execution permissions
---
📊 Monitoring

* Metrics via AWS CloudWatch

* Dashboards with custom widgets for CPU, memory, and error rates

* Alerts set on 70%+ CPU utilization
---
🔐 Security

* ECS tasks with restricted IAM roles

* Role-based access via IAM policies

* Defined Security Groups and NACL
---
