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
