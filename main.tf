resource "aws_instance" "web" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  key_name      = "centos-eks"
  tags = {
    Name = "userdata-demo"
    ENV  = "Prod"
  }
}






