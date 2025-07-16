provider "aws" {
  region = "us-east-2"
}

# Create VPCs dynamically
resource "aws_vpc" "vpcs" {
  for_each = local.vpcs

  cidr_block           = each.value.cidr_block
  instance_tenancy     = each.value.instance_tenancy
  enable_dns_support   = each.value.enable_dns_support

  tags = {
    Name        = each.key
    Description = each.value.description
  }
}

# Create Subnets dynamically for each VPC
resource "aws_subnet" "subnets" {
  for_each = local.vpcs

  vpc_id            = aws_vpc.vpcs[each.key].id
  cidr_block        = each.value.subnet_cidr
  availability_zone = each.value.availability_zone

  tags = {
    Name = "${each.key}-subnet"
  }
}

