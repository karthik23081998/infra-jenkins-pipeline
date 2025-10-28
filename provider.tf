
  terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.18.0"
    }
  }

provider "aws" {
    region = "ap-south-1"
  
}
backend "s3" {
    bucket = "bhanu-2000-usa"
    key = "jp/innfraterrafrom"
    region = "ap-south-1 "
}
  }