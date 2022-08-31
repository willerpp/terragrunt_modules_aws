terraform {
  # Live modules pin exact Terraform version; generic modules let consumers pin the version.
  # The latest version of Terragrunt (v0.36.0 and above) recommends Terraform 1.1.4 or above.
  required_version = "= 0.13.1"

  # Live modules pin exact provider version; generic modules let consumers pin the version.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "= 3.7.0"
    }
  }
}

/*
module "labels" {
  #source = "git::https://github.com/clouddrove/terraform-labels.git?ref=tags/0.13.0"
  source = "../../../global/clouddrove013//labels"                                                                 # modified by WPP


  enabled     = true
  name        = var.name
  application = var.application
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
  tags        = var.tags                                                                # modified by WPP
}
*/

resource "aws_codecommit_repository" "default" {
  repository_name = var.name
  description     = var.description
  #tags            = module.labels.tags
  default_branch  = var.branch
}


