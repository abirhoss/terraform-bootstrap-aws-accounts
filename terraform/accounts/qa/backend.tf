# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    region          = "ap-southeast-2"
    bucket          = "terraform-xyz-qa"
    dynamodb_table  = "terraform-xyz-qa-locks"
    encrypt         = true
    key             = "terraform.tfstate"
    role_arn        = "arn:aws:iam::123456789123:role/terraform"
  }
}
