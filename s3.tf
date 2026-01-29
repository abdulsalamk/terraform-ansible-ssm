resource "aws_s3_bucket" "main" {
  bucket = "ansible-bucket-9-demo"

  tags = merge({
    Name = "ansible-bucket-9-demo",
  }, local.default_tags)
}