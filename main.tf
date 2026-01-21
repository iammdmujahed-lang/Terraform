resource "aws_iam_user" "mujahed" {
  name = "mujahed"

  tags = {
    description = "Technical Team Lead"
  }
}

resource "aws_iam_user_policy_attachment" "mujahed_s3_full_access" {
  user       = aws_iam_user.mujahed.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
