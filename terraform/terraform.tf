terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    #tls certificates for kubernetes 
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }

  #if the backend is not centralised , thats could cause duplications in the state creation
   
  backend "s3" {
    bucket = "vprofileiacstate"
    key    = "terraform.tfstate"
    region = "eu-north-1"
  }

  required_version = "~> 1.6.3"
}
##
##
##
