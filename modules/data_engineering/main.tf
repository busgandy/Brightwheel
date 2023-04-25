resource "aws_iam_group" "data_engineering" {
  name = "DataEngineering"
}

resource "aws_iam_group_policy" "data_engineering_policy" {
  name  = "DataEngineeringPolicy"
  group = aws_iam_group.data_engineering.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["redshift:*"]
        Resource = "*"
      }
    ]
  })
}