provider "aws" {
  region = "us-east-1"
}

#  Creating the Security Group
resource "aws_security_group" "basic_sg" {
  name        = "terraform-basic-sg"
  description = "Allow SSH and HTTP inbound traffic"

#inbound traffic rules added for ssh and http protocols 
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
#outbound rule 

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "ec2" {
  ami                    = "ami-0c02fb55956c7d316" # Us-east-1
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.basic_sg.id]

  tags = {
    Name = "Terraform-EC2-Basic"
  }
}

