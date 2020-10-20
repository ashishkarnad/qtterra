resource "aws_vpc" "ashishvpc"
{
    cidr_block = "192.168.0.0/16"
    enable_dns_support = "true"
    tags = {
        Name = "frontf"
    }
}

resource "aws_s3_bucket" "ashishbucket" {
bucket = "ashishawsknewltf"
tags = {
    Name = "ashishawskltf"
     Environment = "Dev"
     CreatedBy = "Terraform"
      }
    
}   

resource "aws_subnet" "web" {
vpc_id = aws_vpc.ashishvpc.id 
cidr_block =  "192.168.0.0/24"
tags = {
        Name = "web"
    }
}

resource "aws_subnet" "app"{
    vpc_id = aws_vpc.ashishvpc.id
    cidr_block = "192.168.1.0/24"
    tags = {
        Name = "web"
    }
}