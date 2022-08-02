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
  bucket = "test-bucket-tf"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
