variable "user_name" {
  type = string
}

resource "aws_iam_user" "user" {
  name          = var.user_name
  force_destroy = true
}

resource "aws_iam_access_key" "user_access_key" {
  user       = var.user_name
  depends_on = [aws_iam_user.user]
}

output "access_key" {
  value = aws_iam_access_key.user_access_key.id
}

output "secret_access_key" {
  value = aws_iam_access_key.user_access_key.secret
}
