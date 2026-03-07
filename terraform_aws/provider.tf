terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.33.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.2.1"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.7.0"
    }
    null = {
      source = "hashicorp/null"
      version = "3.2.4"
    }  // ansible ma handoff garna lai null chaiyo
    cloudflare = {
      source = "cloudflare/cloudflare" //domain name automatically update garna lai
      version = "5.17.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "cloudflare" {
  api_token = var.CLOUDFLARE_API_TOKEN
}

