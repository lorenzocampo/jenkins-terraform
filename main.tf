terraform {
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}

output "jenkins_terraform" {
  value = "running Terraform from Jenkins"
}