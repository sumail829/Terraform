terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "3.6.2"
    }
  }
}

provider "docker" {
    host = "unix:///var/run/docker.sock"
}

resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}

resource "docker_container" "ubuntu" {
  name  = "foo"
  image = docker_image.ubuntu.image_id
  command = ["sleep", "1000"]
}

resource "docker_container" "nginx" {
  name  = "samir"
  image = "nginx"
  
  ports {
    internal = "80"
    external = "8079"
  }
}

resource "docker_container" "postgres15" {
  name  = "samir1"
  image = "postgres:15"
  
  ports {
    internal = "5432"
    external = "8078"
  }

  env = [
    "POSTGRES_USER=samir",
    "POSTGRES_PASSWORD=samir123",
    "POSTGRES_DB=mydb"
  ]
}


