resource "aws_s3_bucket" "app_content_bucket" {
  bucket = "application-content-${var.environment}"
}
