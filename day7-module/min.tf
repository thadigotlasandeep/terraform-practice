module "rishi" {
    source = "../day2"
    ami_id = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    keypair = "apsouth-1key"

}
  