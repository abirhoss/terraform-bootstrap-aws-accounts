provider "aws" {
  region = var.aws_default_region
  version = "~> 3.0"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.iam_role_terraform_name}"
  }

  # Only these AWS Account IDs may be operated on by this template
  allowed_account_ids = [var.account_id]
}

