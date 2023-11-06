terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}


# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAWTQMRNHLG3VNXMEU"
  secret_key = "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"
}

# Create EC2 instance in us-west-2
resource "aws_instance" "tfDemoInstance" {
  ami           = "ami-0872c164f38dcc49f"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform Demo Instance"
  }
}