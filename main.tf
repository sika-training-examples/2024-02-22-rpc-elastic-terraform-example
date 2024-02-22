terraform {
  backend "http" {}
  required_providers {
    elasticstack = {
      source = "elastic/elasticstack"
    }
  }
}

provider "elasticstack" {
  elasticsearch {
    endpoints = ["https://es.k8s.sikademo.com:443"]
    username  = "elastic"
    password  = "Mc48Y45YXva5PUv5jyf5P738"
  }
}
