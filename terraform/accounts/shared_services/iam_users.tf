# IAM user - 'admin'
module "iam_user_admin" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 2.0"

  name            = var.iam_user_admin_username
  pgp_key         = "keybase:${var.keybase_username}"
  password_length = var.iam_user_password_length

  password_reset_required = false
}

module "iam_user_user_1" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 2.0"

  name            = var.iam_users_usernames.user_1
  pgp_key         = "keybase:${var.keybase_username}"
  password_length = var.iam_user_password_length

  password_reset_required = true
}

module "iam_user_user_2" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 2.0"

  name            = var.iam_users_usernames.user_2
  pgp_key         = "keybase:${var.keybase_username}"
  password_length = var.iam_user_password_length

  password_reset_required = true
}

module "iam_user_user_3" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 2.0"

  name            = var.iam_users_usernames.user_3
  pgp_key         = "keybase:${var.keybase_username}"
  password_length = var.iam_user_password_length

  password_reset_required = true
}

module "iam_user_terraform" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 2.0"

  name            = var.iam_cicd_user_username
  pgp_key         = "keybase:${var.keybase_username}"
  password_length = var.iam_user_password_length

  password_reset_required = false
}