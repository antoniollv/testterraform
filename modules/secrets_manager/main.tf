data "aws_secretsmanager_secret" "this_secret" {
  name = var.secret_name
}
data "aws_secretsmanager_secret_version" "this_secret_version" {
  secret_id = data.aws_secretsmanager_secret.this_secret.id
}
