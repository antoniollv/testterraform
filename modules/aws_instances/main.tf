resource "aws_instance" "aws_instance" {
    for_each = var.instance_config

    ami           = each.value.ami
    instance_type = each.value.instance_type
    tags          = merge(each.value.tags, { name = each.key}, var.shared_tags,
    { VARIABLE1 = module.secrets_manager.secret_values.VARIABLE1 }
    )
  
}
module "secrets_manager" {
  source = "../secrets_manager"

  secret_name = "topsecret"
}
