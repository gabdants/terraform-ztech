resource "aws_cloudwatch_log_group" "ztech_log_group" {
  name              = "/ecs/ztech-app"
  retention_in_days = 30

  tags = {
    Name = "ztech-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "ztech_log_stream" {
  name           = "ztech-log-stream"
  log_group_name = aws_cloudwatch_log_group.ztech_log_group.name
}