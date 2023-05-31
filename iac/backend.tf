# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "nn-terraform-remote-state"
    key            = "nn-rentzone-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}
