terraform {
  required_version = ">= 1.0.0"

  backend "remote" {
    hostname     = "app.terraform.io"   # Terraform Enterprise hostname
    organization = "devops_org_test"   # Your Terraform Enterprise organization

    workspaces {
      name = "terraform_poc"  # Name of your Terraform Enterprise workspace
    }
  }
}


provider "local" {}

resource "local_file" "example" {
  filename = "${path.module}/example.txt"
  content  = "Hello from Terraform! Workspace: ${terraform.workspace}"
}
