terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.60"
    }
  }

  required_version = ">=1.9.0"

  backend "s3" {
    bucket = "tfcert-statefiles"
    key    = "GitHub/terraform-ansible-ssm/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {}
