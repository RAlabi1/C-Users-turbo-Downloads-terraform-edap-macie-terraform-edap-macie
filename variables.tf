variable "profile" {
  description = "Account to deploy into"
  type        = string
}

variable "region" {
  description = "AWS region in which to deploy"
  type        = string
  default     = "eu-west-2"
}

variable "stage" {
  description = "Environment to deploy resources into"
  type        = string
}

variable "log-bucket-name" {
  type = string
  default = "central-log-bucket"
}