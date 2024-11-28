  resource "aws_instance" "example" {
  count      = 3
  ami           = "ami-0614680123427b75e"  # Replace with your desired AMI ID
  instance_type = "t2.micro"
  tags = {
    Name = "honey sis group-${count.index}"
  }
}