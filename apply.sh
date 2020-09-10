terraform apply \
  -var 'name=langtool' \
  -var 'task_definition_file=container-definition-test.json' \
  -var 'vpc_id=vpc-00424902b82913739' \
  -var 'subnets=["subnet-06c03c15836a8a3ee","subnet-0a886e20dda45a541"]' \
  -var 'log_group=/ecs/scheduled_task/langtool_support_run' \
