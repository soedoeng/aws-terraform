resource "aws_route_table" "tfer--rtb-002D-046a3f07819c4f046" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0476b154405c4750d"
  }

  tags = {
    Name = "public-route"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0ee80823ba4664ece_id}"
}

resource "aws_route_table" "tfer--rtb-002D-0ed37de87d31ae351" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0eb492d38c016a0a5"
  }

  tags = {
    Name = "private-route"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0ee80823ba4664ece_id}"
}
