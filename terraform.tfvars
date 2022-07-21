cidr = "10.0.0.0/16"
internet_cidr = "0.0.0.0/0"
ec2_type = "t2.micro"
publicA_subnet_cidr = "10.0.0.0/24"
publicB_subnet_cidr = "10.0.2.0/24"
privateA_subnet_cidr = "10.0.1.0/24"
privateB_subnet_cidr = "10.0.3.0/24"
engine               = "mysql"
engine_version       = "5.7"
instance_class       = "db.t3.micro"
username             = "user1"
password             = "password"
parameter_group_name = "default.mysql5.7"