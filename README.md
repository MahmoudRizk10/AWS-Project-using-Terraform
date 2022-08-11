# AWS-Project-using-Terraform

 Terraform Task using AWS Services


* Build an AWS architecture with terraform to run nodeJS application

* Provider: ( for the backend using s3 bucket to host tfstate file)

* Network: ( One VPC with 2 public subnets and 2 private subnets, nat gateway, internet gateway, route tables with their associations)

* EC2: (Bastion server and Private instance for application)

* Security groups: ( Allowing the following ports: 22, 3000, 3306, 6379, 80 )

* Private key for EC2 (using tls and key pair resources)

* Secret Manager: (To save EC2 private key in secure place in for utilization purposes)

* RDS: ( Application Database)

* Elastic Cache: (IN-Memory database)

* System Manager: (Host environment Variables for Redis and RDS)

