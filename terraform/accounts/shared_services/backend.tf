# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    region         = "ap-southeast-2"
    bucket         = "terraform-xyz-shared-services"
    dynamodb_table = "terraform-xyz-shared-services-locks"
    encrypt        = true
    key            = "terraform.tfstate"
  }
}