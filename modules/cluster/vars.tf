# source article: https://medium.com/@bradford_hamilton/deploying-containers-on-amazons-ecs-using-fargate-and-terraform-part-2-2e6f6a3a957f
variable "aws_region" {
  type = string
}

variable "app_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "app_port" {
  type = number
  default = 80
}

variable "app_count" {
  type = number
  default = 1
}

variable "fargate_cpu" {
  default = 256
}

variable "fargate_memory" {
  default = 512
}

variable "health_check_path" {
  default = "/"
}

variable "availability_zones_count" {
  default = 2
}

variable "main_vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "ecr_repo_url" {
  type = string
}

variable "image_tag" {
  type = string
}
