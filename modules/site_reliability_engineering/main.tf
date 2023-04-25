resource "aws_iam_group" "site_reliability_engineering" {
  name = "SiteReliabilityEngineering"
}

resource "aws_iam_group_policy" "site_reliability_engineering_policy" {
  name  = "SiteReliabilityEngineeringPolicy"
  group = aws_iam_group.site_reliability_engineering.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["*"]
        Resource = "*"
      }
    ]
  })
}