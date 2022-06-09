resource "aws_organizations_organization" "org" {
  feature_set = "ALL"

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_organizations_account" "shared_services" {
  name      = var.xyz_accounts.shared_services.account_name
  email     = var.xyz_accounts.shared_services.account_email

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_organizations_account" "qa" {
  name      = var.xyz_accounts.qa.account_name
  email     = var.xyz_accounts.qa.account_email

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_organizations_account" "staging" {
  name      = var.xyz_accounts.staging.account_name
  email     = var.xyz_accounts.staging.account_email

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_organizations_account" "production" {
  name      = var.xyz_accounts.production.account_name
  email     = var.xyz_accounts.production.account_email

  lifecycle {
    prevent_destroy = true
  }
}