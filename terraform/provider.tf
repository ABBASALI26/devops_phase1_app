terraform {
required_providers {
aws = {
source = "hashicorp/aws"
}
}

backend "s3" {
bucket       = "devops-phase2-tfstate-890968193149"
key          = "terraform/terraform.tfstate"
region       = "us-east-1"
use_lockfile = true
}
}

provider "aws" {
region = var.aws_region
}
