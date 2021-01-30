resource "aws_route_table_association" "tfer--subnet-002D-049d28836b10558ff" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-046a3f07819c4f046_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-049d28836b10558ff_id}"
}

resource "aws_route_table_association" "tfer--subnet-002D-06601e6da39e68102" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-0ed37de87d31ae351_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-06601e6da39e68102_id}"
}

resource "aws_route_table_association" "tfer--subnet-002D-08436cd53f1552aac" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-046a3f07819c4f046_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-08436cd53f1552aac_id}"
}

resource "aws_route_table_association" "tfer--subnet-002D-0e384f8f7a475263b" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-0ed37de87d31ae351_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0e384f8f7a475263b_id}"
}
