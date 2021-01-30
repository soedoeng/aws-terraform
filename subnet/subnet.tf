resource "aws_subnet" "tfer--subnet-002D-049d28836b10558ff" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "172.21.5.0/24"
  map_public_ip_on_launch         = "true"

  tags = {
    Name = "pub-b-soedoeng"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0ee80823ba4664ece_id}"
}

resource "aws_subnet" "tfer--subnet-002D-06601e6da39e68102" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "172.21.2.0/24"
  map_public_ip_on_launch         = "false"

  tags = {
    Name = "priv-b-soedoeng"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0ee80823ba4664ece_id}"
}

resource "aws_subnet" "tfer--subnet-002D-08436cd53f1552aac" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "172.21.4.0/24"
  map_public_ip_on_launch         = "true"

  tags = {
    Name = "pub-a-soedoeng"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0ee80823ba4664ece_id}"
}

resource "aws_subnet" "tfer--subnet-002D-0e384f8f7a475263b" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "172.21.1.0/24"
  map_public_ip_on_launch         = "false"

  tags = {
    Name = "priv-a-soedoeng"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0ee80823ba4664ece_id}"
}
