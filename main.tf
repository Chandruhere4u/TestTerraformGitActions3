terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">= 1.1.0"


  cloud {
    organization = "ChandruTestOrg"

    workspaces {
      name = "TestTerraformGitActions3"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "TestInsanceAssumeRole" {
  ami           = "ami-01147599e39cb5802"
  instance_type = "t2.micro"
  tags = {
    name = "TestInstance7"
  }
}