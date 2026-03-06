# Terraform Docker Infrastructure

This project demonstrates how to use **Terraform** to manage **Docker containers** using Infrastructure as Code (IaC).  
Terraform automatically pulls Docker images and creates containers based on the configuration defined in `main.tf`.

The setup deploys multiple containers including:

- Ubuntu container for testing
- Nginx web server
- PostgreSQL database

---

## Technologies Used

- Terraform
- Docker
- HashiCorp Configuration Language (HCL)

---

## Project Structure

```
terraform/
│
├── main.tf                 # Terraform configuration file
├── terraform.tfstate       # Terraform state file
├── terraform.tfstate.backup
├── .terraform.lock.hcl
└── .terraform/             # Terraform provider plugins
```

---

## Infrastructure Created

Terraform provisions the following resources:

### 1. Ubuntu Container
- Image: `ubuntu:latest`
- Container Name: `foo`
- Command: `sleep 1000`

### 2. Nginx Container
- Image: `nginx`
- Container Name: `samir`
- Exposed Port:
  - Internal: `80`
  - External: `8079`

Access Nginx at:

```
http://localhost:8079
```

### 3. PostgreSQL Container
- Image: `postgres:15`
- Container Name: `samir1`
- Exposed Port:
  - Internal: `5432`
  - External: `8078`
- Environment Variables:
  - POSTGRES_USER=samir

---

## Prerequisites

Before running the project ensure you have:

- Docker installed
- Terraform installed

Check installation:

```bash
docker --version
terraform --version
```

---

## How to Run

### 1 Initialize Terraform

```bash
terraform init
```

This downloads the required Docker provider.

---

### 2 Validate Configuration

```bash
terraform validate
```

---

### 3 Plan Infrastructure

```bash
terraform plan
```

Shows what Terraform will create.

---

### 4 Apply Configuration

```bash
terraform apply
```

Type `yes` to create the infrastructure.

---

## Verify Containers

Check running containers:

```bash
docker ps
```

---

## Destroy Infrastructure

To remove all containers:

```bash
terraform destroy
```

---

## Learning Objectives

This project demonstrates:

- Infrastructure as Code (IaC)
- Terraform providers
- Docker container automation
- Port mapping
- Environment variables
- Reproducible infrastructure

---

## Author

Samir Panjiyar
