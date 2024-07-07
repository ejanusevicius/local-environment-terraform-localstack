terraform {
  backend "s3" {
    bucket = "remote-bucket-name"
    key    = "key/for/statefile"
    region = "eu-west-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.56.1"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

module "infrastructure" {
  source = "../modules/infrastructure"

  # Environment variables for module go here
  environment = "test"
}
