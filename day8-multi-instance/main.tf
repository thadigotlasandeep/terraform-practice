resource "aws_instance" "Name" {
    ami = "ami-0453ec754f44f9a4a"
    instance_type = "t2.micro"
    key_name = "north.key"
    tags = {
      Name = "rishi"
    }
  
}

resource "aws_instance" "name" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "apsouth-1key"
    tags = {
      Name = "kumar"
    }
      provider = aws.america
}