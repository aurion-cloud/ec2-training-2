terraform {
    backend "s3" {
        bucket = "talent-academy-536371856221-tfstates"
        key = "sprint2/week5/ec2-redo-terraform/terraform.tfstates"
        dynamodb_table = "terraform-lock"
    }
}