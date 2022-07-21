variable "cidr" {
  type = string 
}
variable "internet_cidr" {
  type = string
}
variable "ec2_type" {
  type = string
}
variable "publicA_subnet_cidr" {
  type = string 
}
variable "publicB_subnet_cidr" {
  type = string 
}
variable "privateA_subnet_cidr" {
  type = string 
}
variable "privateB_subnet_cidr" {
  type = string 
}
variable "engine" {}
variable "engine_version" {}     
variable "instance_class" {}      
variable "username" {}  
variable "password" {} 
variable "parameter_group_name" {}