provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "mujahed" {
  name = "mujahed"
}

resource "aws_iam_user_policy_attachment" "s3_access" {
  user       = aws_iam_user.mujahed.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

