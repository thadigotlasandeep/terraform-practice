resource "aws_instance" "dependent" {

    ami="ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "apsouth-1key"

}
resource "aws_s3_bucket" "dependent" { 
     bucket = "ysgdugdusagd"
}
resource "test" "aws_instance_id" {
  
  
}
