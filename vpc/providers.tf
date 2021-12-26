provider "aws" {
  region = var.region


}

#provider "template" {
#  version = "1.0.0"
#}

terraform {
  required_version = ">= 1.0"

  backend "s3" {
    bucket  = "lrn-terraform-backbone-test-ap-south-1"
    key     = "test/vpc"
    region  = "ap-south-1"
    encrypt = "true"
  }
}

terraform {
  required_providers {
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }
  }
}

provider "template" {
  # Configuration options
}
