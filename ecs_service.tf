resource "aws_ecs_service" "langtool-service" {
  name                                = "langtool-service"
  cluster                             = "${aws_ecs_cluster.langtool_cluster.arn}"
  task_definition                     = "${aws_ecs_task_definition.langtool_runner.arn}"
  desired_count                       = 2
  launch_type                         = "FARGATE"
	platform_version                    = "LATEST"
  deployment_maximum_percent          = 200
  deployment_minimum_healthy_percent  = 100



  network_configuration {
    subnets           = "${var.subnets}"
    security_groups   = ["sg-04245ee45d135db1c"]
    assign_public_ip  = true

  }
}
