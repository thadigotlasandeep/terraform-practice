resource "aws_instance" "name" {
 ami = "ami-0fd05997b4dff7aac"
 instance_type ="t2.medium"
 #key_name = "Proceed without a key pair"
 tags = {
  name = "rishi"
 }
}
