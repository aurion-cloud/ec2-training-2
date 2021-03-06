resource "aws_instance" "my_public_server" {
  ami                    = data.aws_ami.aws_basic_linux_ami.id
  instance_type          = var.ec2_type
  subnet_id              = data.aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.my_public_app_sg1.id]
  key_name               = var.my_keypair

  tags = {
      Name = "public_server"
  }
}