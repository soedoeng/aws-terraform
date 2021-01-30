resource "aws_vpc" "tfer--vpc-002D-0ee80823ba4664ece" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "172.21.0.0/16"
  enable_classiclink               = "false"
  enable_classiclink_dns_support   = "false"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"

  tags = {
    Name = "vps-soedoeng"
  }
}
