provider "aws" {
    region = "us-east-2"
    access_key = "AKIAZI66KHMKO7DB7G7Z"
    secret_key = "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"
}

resource "aws_s3_bucket" "ashishbucket" {
bucket = "ashishawsknewltf"
tags = {
    Name = "ashishawskltf"
     Environment = "Dev"
     CreatedBy = "Terraform"
      }
    
}   