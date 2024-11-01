terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "2.1.0"
    }
    tls = {
      source  = "registry.terraform.io/hashicorp/tls"
      version = "3.1.0"
    }
  }
  required_version = ">= 0.13"
}

provider "openstack" {}
