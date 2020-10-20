resource "aws_vpc" "ashishvpc" {
    cidr_block = "192.168.0.0/16"
    enable_dns_support = "true"
    tags = {
        Name = "ashishvpc"
    }
}

resource "aws_s3_bucket" "ashishbucket" {
bucket = "ashishawsknewltf"
tags = {
    Name = "ashishawsoldltp"
     Environment = "Dev"
     CreatedBy = "Terraform"
      }
    
}   

resource "aws_subnet" "web" {
    vpc_id = aws_vpc.ashishvpc.id 
    cidr_block = "192.168.0.0/24"
    tags = {
        Name = "web"
    }
}

resource "aws_subnet" "app" {
    vpc_id = aws_vpc.ashishvpc.id 
    cidr_block = "192.168.1.0/24"
    tags = {
        Name = "app"
    }
}

resource "aws_subnet" "mgmt" {
    vpc_id = aws_vpc.ashishvpc.id 
    cidr_block = "192.168.2.0/24"
    tags = {
        Name = "mgmt"
    }
}

resource "aws_subnet" "db" {
    vpc_id = aws_vpc.ashishvpc.id 
    cidr_block = "192.168.3.0/24"
    tags = {
        Name = "db"
    }
}
