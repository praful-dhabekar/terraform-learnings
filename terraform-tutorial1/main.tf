provider "aws" {
  region     = "ap-south-1"
  access_key = "XXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXX"
} 

resource "aws_instance" "ec2_example" {
    ami = "ami-07b69f62c1d38b012"  
    instance_type = "t2.micro" 
    tags = {
        Name = "Terraform EC2"
    }
}

