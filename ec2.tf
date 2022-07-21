data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


// basion Ec2
resource "aws_instance" "bastionhost" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.ec2_type
  associate_public_ip_address = true
  subnet_id                   = module.network.public_subnet_id_A
  vpc_security_group_ids      = [module.network.security_group_ssh]
  provisioner "local-exec" {
    command = "echo public IP address is ${self.public_ip}"
  }


  tags = {
    Name = "bastionhost"
  }
}


resource "tls_private_key" "mykey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "testkey"
  public_key = tls_private_key.mykey.public_key_openssh
}

//  Ec2
resource "aws_instance" "ec2host" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.ec2_type
  subnet_id              = module.network.private_subnet_id_A
  vpc_security_group_ids = [module.network.security_group_ssh3000]
  key_name               = aws_key_pair.generated_key.key_name


  tags = {
    Name = "ec2host"
  }
}

