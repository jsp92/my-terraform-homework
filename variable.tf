variable "myAWSRegion" {
  description = "AWS Region Location"
  type        = string
  default     = "us-east-2"
}

variable "ec2_ami" {
  description = "EC2 AMI ID"
  type        = string
  default     = "ami-0ec3d9efceafb89e0"
}

variable "my_ec2_instance_type" {
  description = "EC2 Type"
  type        = string
  default     = "t2.micro"
}

variable s3_bucket_name {
    description = "Name of S3 bucket"
    type = string
    default = "my-tf-s3-bucket-0293749876986"
}

variable "ec2_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = "2"
}

variable "s3_count" {
  description = "Number of S3 buckets"
  type        = number
  default     = "2"
}

variable "vpc_cidr" {
  description = "Number of S3 buckets"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_count" {
  description = "Number of VPCs"
  type        = number
  default     = "2"
}

variable "vpc_instance_tenancy" {
  description = "VPC instance tenancy setting"
  type        = string
  default     = "default"
}

