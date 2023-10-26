#bucket
resource "aws_s3_bucket" "dev04" {
  bucket = "storage-dev04"
  tags = {
    Name = "storage-dev04"
  }
}