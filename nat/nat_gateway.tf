resource "aws_nat_gateway" "tfer--nat-002D-0eb492d38c016a0a5" {
  allocation_id = "eipalloc-0dfdbfe13faca3e8e"
  subnet_id     = "subnet-08436cd53f1552aac"

  tags = {
    Name = "nat-soedoeng"
  }
}
