provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {}

locals {
  cluster_name = "shubham-eks-${random_string.suffix.result}"
}

resource "random string" "suffix" {
  length = 8
  special = false
}


module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.7.0"

  
}
