variable "aws_region" {
  description = "Regiao AWS"
  default     = "us-west-2"
}

variable "db_username" {
  description = "usuario root do db"
  default     = "root"
}

variable "db_password" {
  description = "senha root do db"
  default     = "root"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "myEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default = "myEcsAutoScaleRole"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image que vai rodar no ECS cluster"
  default     = "php_nginx_sre_challenge:latest"
}

variable "app_port" {
  description = "porta exposta da imagem"
  default     = 3000
}

variable "app_count" {
  description = "numero de container a serem rodados"
  default     = 3
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}
