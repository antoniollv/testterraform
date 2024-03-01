module "aws_instances" {
  source = "./modules/aws_instances"

  instance_config = local.config.instances
  shared_tags     = local.config.tags
}
