# Terraform Portfolio

This repository showcases **Infrastructure as Code (IaC)** projects using **Terraform**.  
It contains two projects demonstrating Terraform’s capabilities for containerized infrastructure and AWS cloud infrastructure.

---

## Projects

### 1. Docker Infrastructure

- **Folder:** `docker-infrastructure/`
- **Description:** Automates deployment of Docker containers including Ubuntu, Nginx, and PostgreSQL.  
- **Learning Focus:** Terraform provider for Docker, container automation, port mapping, environment variables, reproducible infrastructure.

**Quick Start:**

```bash
cd docker-infrastructure
terraform init
terraform plan
terraform apply
```

- Access Nginx at `http://localhost:8079`
- Destroy containers:

```bash
terraform destroy
```

---

### 2. AWS Infrastructure

- **Folder:** `aws-infrastructure/`
- **Description:** Automates AWS cloud setup including VPC, subnets, EC2 instances, key pairs, and security groups.  
- **Learning Focus:** VPC design, subnetting, EC2 provisioning, SSH access, network security, scalable and reproducible infrastructure.

**Quick Start:**

```bash
cd aws-infrastructure
terraform init
terraform plan
terraform apply
```

- SSH into EC2:

```bash
ssh -i samir.pem ubuntu@<EC2_PUBLIC_IP>
```

- Destroy AWS resources:

```bash
terraform destroy
```

---

### Ansible Automation

Automated infrastructure configuration using Ansible playbooks.

**Features**
- Automated web server setup
- Docker container deployment
- Kubernetes cluster setup using Kind
- Infrastructure configuration using YAML playbooks

**Tech Used**
- Ansible
- Docker
- Kubernetes
- YAML


# Kubernetes Deployment

Kubernetes is used for container orchestration and scalable application deployment.

## Kubernetes Components

- Backend Deployment and Service
- Frontend Deployment and Service
- PostgreSQL Deployment and Service

## Kubernetes Manifests

- backend.yaml
- backend-service.yaml
- frontend.yaml
- frontend-service.yaml
- postgres.yaml
- postgres-service.yaml

## Local Cluster

A local Kubernetes cluster is created using **Kind (Kubernetes in Docker)**.

Configuration file:
# Infrastructure Workflow
Terraform → AWS Infrastructure

Ansible → Server Configuration

Docker → Containerization

Kubernetes → Container Orchestration



**Project Structure**
terraform_portfolio
│
├── terraform_aws
│ ├── provider.tf
│ ├── vpc.tf
│ ├── vm.tf
│ ├── key.tf
│ ├── cloudfare.tf
│ └── output.tf
│
├── ansible-training
│ ├── ansible.cfg
│ ├── inventory
│ │ └── inventory.ini
│ ├── setup.yaml
│ ├── setup-webserver.yaml
│ ├── setup-kubernates.yaml
│ ├── docker-compose.yaml
│ ├── kind-config.yaml
│ │
│ └── kubernetes
│ ├── backend.yaml
│ ├── backend-service.yaml
│ ├── frontend.yaml
│ ├── frontend-service.yaml
│ ├── postgres.yaml
│ └── postgres-service.yaml
## Technologies Used

- Terraform (IaC)
- Docker
- AWS (EC2, VPC, Security Groups, Key Pairs)
- HashiCorp Configuration Language (HCL)

---

## Learning Outcomes

By completing these projects, I have gain experience in:

- Writing Terraform configurations for different providers
- Automating containerized and cloud infrastructure
- Infrastructure versioning and reproducibility
- Secure access management (SSH keys, environment variables)
- Networking basics (ports, VPC, subnets, security groups)

---
# Security

Sensitive files are excluded from the repository using `.gitignore`.

Ignored files include:

- `.env`
- `*.tfvars`
- `*.pem`
- `terraform.tfstate`
- `.terraform`

---

## Author

**Suman Panjiyar**
