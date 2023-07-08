terraform {
    required_version = "~> 1.5.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Priyankainfra" {
	ami = "ami-06b09bfacae1453cb" 
	instance_type = "t2.micro"
}
