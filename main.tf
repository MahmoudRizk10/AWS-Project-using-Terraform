module "network" {
  source ="./network"
  cidr = var.cidr
  internet_cidr = var.internet_cidr
  publicA_subnet_cidr= var.publicA_subnet_cidr
  publicB_subnet_cidr = var.publicB_subnet_cidr
  privateA_subnet_cidr= var.privateA_subnet_cidr
  privateB_subnet_cidr= var.privateB_subnet_cidr
  
}