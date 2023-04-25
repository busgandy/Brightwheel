resource "aws_iam_group" "frontend_engineering" {
  name = "FrontendEngineering"
}

resource "aws_iam_group_policy" "frontend_engineering_policy" {
  name  = "FrontendEngineeringPolicy"
  group = aws_iam_group.frontend_engineering.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["cloudfront:*"]
        Resource = "*"
      }
    ]
  })
}