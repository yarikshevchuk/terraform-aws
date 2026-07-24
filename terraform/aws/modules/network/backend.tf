terraform {
    backend "s3" {
      bucket = "jcasc-tfstate-bucket-001"
      key = "modules/network/terraform.tfstate"
      region = "eu-central-1"
    }
    
}