terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  cloud {
    organization = "nconnectgroup"

    workspaces {
      name = "gh-action-dev"
    }
  }
}

resource "aws_s3_bucket" "this" {
  name = "test-tf-pipeline"
}