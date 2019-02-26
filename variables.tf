
variable "aws_access_key" {
  default = "AKIAJ4OXNZJKIVL7SYWQ"
}

variable "aws_secret_key" {
  default = "gs4bF2VSYis51WHH5HE/Oj184BAL7pX8lJRmcKkM"
}

variable "aws_region" {
  type = "string"
  description = "The AWS region to use"
  default = "ca-central-1"
}

variable "authorized_key" {
  type = "string"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCfSq7ri7jrjC3gdbkjy5iaNqLsXi7Jtt0Co7751cv4rnFeeaa8ck89M2+72j2dw+Q4Bbp26xJNlhL9L0uEgC2Cxf++CR69ks/YOjREDBr8NQtOhSUq/stxVFMXUVumpM/A2NKF8dCfn9I9ijd/0JMj9/+8qVhKzXl5+sTiTgSfDQ== spark-user@baseImage"
}

variable "instances_type" {
  default = "t2.micro"
}

variable "instances_count" {
  default = 2
}

variable "tags" {
  type = "map"
  default = {
    owner = "bnc-project"
  }
}
