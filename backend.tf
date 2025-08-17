terraform {
  backend "s3" {
    bucket = "mystatebucketterraform1725"
    key = "state"
    region = "ap-south-1"
    dynamodb_table = "backend"
  }
}