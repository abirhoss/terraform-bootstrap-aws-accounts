# IAM role - 'terraform'
module "iam_role_terraform" {
  source = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = "~> 2.0"

  create_role         = true
  role_name           = var.iam_role_terraform_name
  role_requires_mfa   = false
  attach_admin_policy = true

  trusted_role_arns   = [
    "arn:aws:iam::${var.xyz_accounts.shared_services.account_id}:user/${var.iam_user_terraform_username}"
  ]
}

# IAM role - 'staff_read_only'
module "iam_role_staff_read_only" {
  source = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = "~> 2.0"

  create_role             = true
  role_name               = var.iam_role_staff_read_only_name
  role_requires_mfa       = false
  attach_readonly_policy  = true

  trusted_role_arns   = [
    "arn:aws:iam::${var.xyz_accounts.shared_services.account_id}:root"
  ]
}