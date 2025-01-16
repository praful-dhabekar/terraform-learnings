provider "aws" {
  region     = "ap-south-1"
  access_key = "XXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXX"
} 

resource "aws_instance" "ec2_example" {
    ami = "ami-07b69f62c1d38b012"  
    instance_type = var.instance_type
    count = var.instance_count
    associate_public_ip_address = var.enable_public_ip 
    tags = {
        Name = "Terraform EC2"
    }
}

variable "instance_type" {
   description = "Instance type t2.micro"
   type        = string
   default     = "t2.micro"
}

variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 1
}

variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = true
} 
