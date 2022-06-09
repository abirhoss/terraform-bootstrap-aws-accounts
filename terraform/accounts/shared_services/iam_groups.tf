# IAM group - 'administrators'
module "iam_group_administrators" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"
  version = "~> 2.0"

  name = var.iam_group_administrators_name

  group_users = [
    module.iam_user_admin.this_iam_user_name,
    module.iam_user_terraform.this_iam_user_name
  ]

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess"
  ]

  attach_iam_self_management_policy = false
}

module "iam_group_developers" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"
  version = "~> 2.0"

  name = var.iam_group_developers_name

  group_users = [
    module.iam_user_user_1.this_iam_user_name
  ]

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess"
  ]

  attach_iam_self_management_policy = false
}

module "iam_group_testers" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"
  version = "~> 2.0"

  name = var.iam_group_testers_name

  group_users = [
    module.iam_user_user_2.this_iam_user_name,
    module.iam_user_user_3.this_iam_user_name
  ]

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess"
  ]

  attach_iam_self_management_policy = false
}