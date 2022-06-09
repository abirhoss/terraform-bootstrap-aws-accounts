# Common variables

variable "organization_name" {
  type = string
  default = "xyz"
}

variable "aws_default_region" {
  type = string
  default = "ap-southeast-2"
}

variable "keybase_username" {
  type = string
  default = "xyz"
}

variable "iam_user_password_length" {
  type = number
  default = 25
}

variable "iam_group_administrators_name" {
  type = string
  default = "administrators"
}

variable "iam_user_admin_username" {
  type = string
  default = "admin"
}

variable "iam_user_terraform_username" {
  type = string
  default = "terraform"
}

variable "iam_role_terraform_name" {
  type = string
  default = "terraform"
}

variable "iam_role_staff_read_only_name" {
  type = string
  default = "staff-read-only"
}

variable "xyz_accounts" {
  type = map(object({
    account_id = number,
    account_name = string,
    account_email = string
  }))

  default = {
    shared_services = {
      account_id = 123456789123
      account_name = "XYZ Shared Services"
      account_email = "aws_shared_services_root@xyz.com"
    },
    qa = {
      account_id = 123456789123
      account_name = "XYZ QA"
      account_email = "aws_qa_root@xyz.com"
    },
    staging = {
      account_id = 123456789123
      account_name = "XYZ Staging"
      account_email = "aws_staging_root@xyz.com"
    }
    production = {
      account_id = 123456789123
      account_name = "XYZ Production"
      account_email = "aws_production_root@xyz.com"
    }
  }
}

# Account variables
variable "account_id" {
  type = number
}

variable "account_name" {
  type = string
}

variable "account_email" {
  type = string
}

variable "account_alias" {
  type = string
}