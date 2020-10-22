resource "aws_vpc" "ashishvpc" {
    cidr_block = var.vpc_cidr
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
    cidr_block = cidrsubnet(var.vpc_cidr, 8, 0)
    availability_zone = format("%sa",var.region)
    tags = {
        Name = "web"
    }
}

resource "aws_subnet" "app" {
    vpc_id = aws_vpc.ashishvpc.id 
    cidr_block = cidrsubnet(var.vpc_cidr,8,1)
    availability_zone = format("%sb",var.region)
    tags = {
        Name = "app"
    }
}

resource "aws_subnet" "mgmt" {
    vpc_id = aws_vpc.ashishvpc.id 
    cidr_block = cidrsubnet(var.vpc_cidr,8,2)
    tags = {
        Name = "mgmt"
    }
}

resource "aws_subnet" "db" {
    vpc_id = aws_vpc.ashishvpc.id 
    cidr_block = cidrsubnet(var.vpc_cidr,8,3)
    tags = {
        Name = "db"
    }
}
