resource "aws_instance" "web" {
  ami           = data.aws_ami.centos8.id #devops-practice
  instance_type = lookup(var.instance_type, terraform.workspace)

  tags = {
    Name = "HelloTerraform"
  }
}