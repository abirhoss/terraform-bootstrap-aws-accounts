# IAM group - 'administrators'
module "iam_group_administrators" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"
  version = "~> 2.0"

  name = var.iam_group_administrators_name

  group_users = [
    module.iam_user_admin.this_iam_user_name
  ]

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess"
  ]

  attach_iam_self_management_policy = false
}