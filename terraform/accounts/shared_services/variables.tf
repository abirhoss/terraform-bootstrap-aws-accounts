variable "iam_group_developers_name" {
  default = "developers"
}

variable "iam_group_testers_name" {
  default = "testers"
}

variable iam_users_usernames {
  default = {
    "user_1": "user_1@xyz.com",
    "user_2": "user_2@xyz.com",
    "user_3": "user_3@xyz.com"
  }
}

variable iam_cicd_user_username {
  default = "terraform"
}