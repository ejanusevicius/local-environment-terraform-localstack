resource "aws_dynamodb_table" "example" {
  name         = "table-name-${var.environment}"
  hash_key     = "hashKey"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "hashKey"
    type = "S"
  }
}
