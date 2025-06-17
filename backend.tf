provider "aws" {
    alias  = "mumbai" 
  region = "ap-south-1"
}


terraform {



  backend "s3" {
    bucket         = "my-terraform-backend-krish"
    key            = "eks-velero/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}