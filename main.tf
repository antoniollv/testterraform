module "aws_instances" {
  source = "./modules/aws_instances" # Ruta al directorio del módulo

  instance_config = local.config.instances
  shared_tags     = local.config.tags
}
