
variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "ap-southeast-2"
}

variable "project_name" {
  description = "Name used for AWS resource tags"
  type        = string
  default     = "aws-infra-automation"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "IPv4 address range for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
