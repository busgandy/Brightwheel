resource "aws_iam_group" "backend_engineering" {
  name = "BackendEngineering"
}

resource "aws_iam_group_policy" "backend_engineering_policy" {
  name  = "BackendEngineeringPolicy"
  group = aws_iam_group.backend_engineering.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["eks:*"]
        Resource = "*"
      }
    ]
  })
}