resource "aws_rds_cluster" "default" {
  cluster_identifier      = "ztech_db"
  vpc_security_group_ids  = ["${aws_security_group.ztech-db.id}"]
  db_subnet_group_name    = "${aws_db_subnet_group.ztech_db.name}"
  engine_mode             = "serverless"
  master_username         = "${var.db_username}"
  master_password         = "${var.db_password}"
  backup_retention_period = 7
  skip_final_snapshot     = false

  scaling_configuration {
    auto_pause               = true
    max_capacity             = 2
    min_capacity             = 2
    seconds_until_auto_pause = 300
  }

  lifecycle {
    ignore_changes = [
      "engine_version",
    ]
  }
}