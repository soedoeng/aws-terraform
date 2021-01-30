resource "aws_main_route_table_association" "tfer--vpc-002D-0ee80823ba4664ece" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-046a3f07819c4f046_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0ee80823ba4664ece_id}"
}
