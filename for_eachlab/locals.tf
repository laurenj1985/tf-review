locals {
  vpcs = {
    "infra-dev" = {
      description         = "Infrastructure Dev VPC"
      cidr_block          = "10.0.0.0/16"
      instance_tenancy    = "default"
      enable_dns_support  = true
      subnet_cidr         = "10.0.1.0/24"
      availability_zone   = "us-east-2a"
      subnet_name         = "dev-subnet"
    }
    "infra-prod" = {
      description         = "Infrastructure Prod VPC"
      cidr_block          = "10.1.0.0/16"
      instance_tenancy    = "default"
      enable_dns_support  = true
      subnet_cidr         = "10.1.1.0/24"
      availability_zone   = "us-east-2a"
      subnet_name         = "prod-subnet"
    }
  }
}
