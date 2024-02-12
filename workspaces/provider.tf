terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "phlabs-remote-state"
    key    = "workspace"
    region = "us-east-1"
    dynamodb_table = "phlabs-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}