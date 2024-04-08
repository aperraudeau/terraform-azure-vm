# Description

Use Terraform to create a Linux VM in Azure

State is stored locally for test purpose

# Installation

# Required

Terraform CLI
Azure CLI

# Development

VS Code and Terraform Extension

# Configuration

Create a file at the root directory named "terraforms.tfvars" and assign values to the following variables:

subscription_id, machine_user, machine_password

# Terraform CLI

terraform init
terraform plan
terraform apply
terraform destroy

# Ouput

Ressources are created and the IP of the VM is visible in your terminal