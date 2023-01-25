resource "aws_instance" "web" {
  ami           = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.TerraformEc2_security.name]
  key_name = "kushal"
  tags = {
    Name = "Test"
  }
}

resource "aws_default_vpc" "main" {
  tags = {
    Name = "main"
  }
}
