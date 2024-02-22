terraform {
  backend "http" {}
  required_providers {
    elasticstack = {
      source = "elastic/elasticstack"
    }
  }
}

variable "elasticsearch_endpoint" {}
variable "elasticsearch_user" {}
variable "elasticsearch_password" {}

provider "elasticstack" {
  elasticsearch {
    endpoints = [var.elasticsearch_endpoint]
    username  = var.elasticsearch_user
    password  = var.elasticsearch_password
  }
}
