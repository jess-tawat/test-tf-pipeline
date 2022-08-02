terraform {
  backend "remote" {
   hostname = "app.terraform.io"
   organization = "nconnectgroup"
  }

    workspaces {
      name = "gh-action-dev"
    }
  }

  provider "aws" {
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "this" {
  bucket = "test-tf-pipeline"
}