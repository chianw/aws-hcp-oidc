terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.94"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.64.0"
    }
  }
  /*
  cloud {
    organization = "redwidgets"
    workspaces {
      name = "aws-hcp-oidc"
    }
  }
  */
  required_version = ">= 1.10.0"
}

provider "aws" {
  region  = "ap-southeast-1"
  profile = "AdministratorAccess-147774774259"
}

provider "tfe" {
}