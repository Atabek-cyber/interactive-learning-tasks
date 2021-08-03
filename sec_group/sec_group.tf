resource "aws_vpc" "external_by_terraform" {
  cidr_block = "10.1.0.0/16"
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
}

  ingress {
   description = "TLS"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["50.194.68.230/32"]
  }
   ingress {
    description = "TLS"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["50.194.68.230/32"]

  }
   ingress {
    description = "TLS"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    
  }
   ingress {
    description = "TLS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}