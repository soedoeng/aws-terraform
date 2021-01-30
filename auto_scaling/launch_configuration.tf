resource "aws_launch_configuration" "tfer--autoscaling-002D-soedoeng" {
  associate_public_ip_address = "false"
  ebs_optimized               = "false"
  enable_monitoring           = "false"
  image_id                    = "ami-0353bcf959ffdeeee"
  instance_type               = "t2.medium"
  key_name                    = "soedoeng"
  name                        = "autoscaling-soedoeng"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "0"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  security_groups = ["sg-0f223f3f3ce73b534"]
}
