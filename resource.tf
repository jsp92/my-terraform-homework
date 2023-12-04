resource "aws_instance" "web" {
  ami           = var.ec2_ami
  instance_type = var.my_ec2_instance_type
  count = var.ec2_count
  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_s3_bucket" "s3_bucket_example" {
  count  = var.s3_count
  bucket = "${var.s3_bucket_name}-${count.index}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  } 
}


resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.vpc_instance_tenancy
  count = var.vpc_count
  tags = {
    Name = "main"
  }
}

