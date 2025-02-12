terraform {
  backend "s3" {
    bucket         = "strike1"  # Replace with your S3 bucket name
    key            = "eks/terraform.tfstate"      # The path within the bucket for your state file
    region         = "us-west-2"                    # AWS region where your bucket is located
    encrypt        = true                           # Optional: encrypt the state file at rest
    # dynamodb_table = "terraform-locks"              # Optional: DynamoDB table for state locking
  }
}