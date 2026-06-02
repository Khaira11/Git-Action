resource "aws_instance" "public" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"   # free tier
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.public_ec2.id]

  tags = {
    Name = "${var.project_name}-public-ec2"
  }
}

resource "aws_instance" "private" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.private_ec2.id]

  tags = {
    Name = "${var.project_name}-private-ec2"
  }
}