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

## Technologies Used

- Terraform (IaC)
- Docker
- AWS (EC2, VPC, Security Groups, Key Pairs)
- HashiCorp Configuration Language (HCL)

---

## Learning Outcomes

By completing these projects, you will gain experience in:

- Writing Terraform configurations for different providers
- Automating containerized and cloud infrastructure
- Infrastructure versioning and reproducibility
- Secure access management (SSH keys, environment variables)
- Networking basics (ports, VPC, subnets, security groups)

---

## Author

**Suman Panjiyar**
