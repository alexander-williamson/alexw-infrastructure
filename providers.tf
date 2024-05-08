terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    region = "eu-west-2"
    bucket = "alexw-terraform-state"
    key    = "infrastructure/terraform.tfstate"
  }
}

provider "aws" {
  region = "eu-west-2"
}

