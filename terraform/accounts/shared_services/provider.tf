provider "aws" {
  region = var.aws_default_region

  # Only these AWS Account IDs may be operated on by this template
  allowed_account_ids = [var.account_id]
}
