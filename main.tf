terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}


# Configure the AWS Provider
#For access key create an IAM user and Give access to EC2 and then generate Acess keys and download the .CSV file#

provider "aws" {
  region     = "Enter the region which you need"
  access_key = ""
  secret_key = ""
}

# Create EC2 instance in us-west-2
#Choose the instance type you need and make sure it is free tier eligible
#copy the ami and make sure you are in the same region that you have given, while copying the ami

resource "aws_instance" "tfDemoInstance" {
  ami           = ""
  instance_type = ""

  tags = {
    Name = "Terraform Demo Instance"
  }
}
