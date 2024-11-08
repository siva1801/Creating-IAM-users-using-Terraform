provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "iam_user" {
  name = devops
}

resource "aws_iam_access_key" "credentials" {
  user = aws_iam_user.iam_user.name
}


resource "aws_iam_user_login_profile" "credentials" {
  user                    = aws_iam_user.iam_user.name
  password_reset_required = true

resource "aws_iam_user_login_profile" "credentials" {
  user                    = "devops-planet"
  password                = "your-password"
  password_reset_required = true
}


output "password" {
  value     = aws_iam_user_login_profile.credentials.password
  sensitive = true
}

output "secret" {
  value     = aws_iam_access_key.credentials.secret
  sensitive = true
}

output "access_key" {
  value = aws_iam_access_key.credentials.id
}

