
variable "create_bucket" {
  description = "Set to true to create the S3 bucket."
  type        = bool
  default     = true
}

resource "random_string" "suffix" {
  count   = var.create_bucket ? 1 : 0
  length  = 8
  special = false
  upper   = false
}

resource "aws_s3_bucket" "example" {
  count = var.create_bucket ? 1 : 0

  bucket = "sandeep-kumar-${random_string.suffix[count.index].id}"
  acl    = "private"

  tags = {
    Name        = "ConditionalBucket"
    Environment = "Dev"
  }

}

