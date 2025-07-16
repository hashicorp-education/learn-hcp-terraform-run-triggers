provider "aws" {
  region = "us-west-2"
}

data "tfe_outputs" "source_workspace" {
  workspace    = "learn-hcp-terraform"
  organization = var.organization_name
}

resource "aws_instance" "app_server" {
  ami           = data.tfe_outputs.source_workspace.nonsensitive_values.instance_ami
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
