resource "aws_autoscaling_group" "tfer--asg-002D-soedoeng" {
  availability_zones        = ["ap-southeast-1b", "ap-southeast-1a"]
  capacity_rebalance        = "false"
  default_cooldown          = "300"
  desired_capacity          = "0"
  force_delete              = "false"
  health_check_grace_period = "300"
  health_check_type         = "EC2"
  launch_configuration      = "${aws_launch_configuration.tfer--autoscaling-002D-soedoeng.name}"
  max_instance_lifetime     = "0"
  max_size                  = "5"
  metrics_granularity       = "1Minute"
  min_size                  = "0"
  name                      = "asg-soedoeng"
  protect_from_scale_in     = "false"
  service_linked_role_arn   = "arn:aws:iam::354193211999:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"

  tag {
    key                 = "Name"
    propagate_at_launch = "true"
    value               = "ec-asg-soedoeng"
  }

  vpc_zone_identifier       = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-06601e6da39e68102_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0e384f8f7a475263b_id}"]
  wait_for_capacity_timeout = "10m"
}
