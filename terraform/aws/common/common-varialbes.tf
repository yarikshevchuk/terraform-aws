variable "tfstate_bucket" {
    type = string
    description = "Terraform state bucket name"
    default = "jcasc-tfstate-bucket-001"
}

variable "region" {
    type = string
    description = "Server location region"
    default =  "eu-central-1"
}

variable "tags" {
    type = any
    description = "tags"
    default = {
        Project = "terraform-project-1"
    }
}
