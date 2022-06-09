# IAM user - 'admin'
module "iam_user_admin" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 2.0"

  name            = var.iam_user_admin_username
  pgp_key         = "keybase:${var.keybase_username}"
  password_length = var.iam_user_password_length

  password_reset_required = false
}