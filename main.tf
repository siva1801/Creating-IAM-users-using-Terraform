resource "aws_iam_user" "user" {
    count = 10
    name = var.iamuser[count.index]
}
