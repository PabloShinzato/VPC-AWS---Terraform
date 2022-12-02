terraform {

  required_version = ">=1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }

  }

  backend "s3" {
    bucket = "pablo-shinzato-codercrypt-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region  = "us-east-1"
  profile = "tfbambam"


  default_tags {
    tags = {
      Owner    = "Pablo Shinzato"
      Manageby = "Terraform"
    }
  }

}
