module "iam_account" {
  source = "terraform-aws-modules/iam/aws//modules/iam-account"
  version = "~> 2.0"
  
  # resource aws_iam_account_alias
  account_alias = var.account_alias

  # resource aws_iam_account_password_policy
  allow_users_to_change_password  = true
  max_password_age                = 90
  minimum_password_length         = var.iam_user_password_length
  password_reuse_prevention       = 10
  require_lowercase_characters    = true
  require_uppercase_characters    = true
  require_numbers                 = true
  require_symbols                 = true
}