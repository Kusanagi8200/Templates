
# Fichier main.tf du module

provider "aws" {
  region = "us-west-2"

  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

variable "ami" {
  description = "ID de l'image EC2"
  default     = "ami-09714bf5f06f931e9" # Linux
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "Infra-security-Mod"
  }
}

variable "aws_access_key" {
  type        = string
  description = "ACCES KEY AWS"
}

variable "aws_secret_key" {
  type        = string
  description = "SECRET KEY AWS."
}
