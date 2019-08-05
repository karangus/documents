variable "aws_access_key" {
  default = "AKIAJHDQBMPZZJOL57EA" 
}
variable "aws_secret_key" {
  default = "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" 
}
variable "private_key_path" {
  default = "ansible.pem" 
}
variable "region" {
  default = "eu-west-1"  
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
data "aws_availability_zones" "azs" {}

variable "subnet_cidr1" {
  default = "10.0.1.0/24"
}
variable "subnet_cidr2" {
  default = "10.0.2.0/24"
}
variable "subnet_cidr3" {
  default = "10.0.3.0/24"
}
variable "subnet_cidr4" {
  default = "10.0.4.0/24"
}



