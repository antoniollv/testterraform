output "secret_values" {
  value = jsondecode(data.aws_secretsmanager_secret_version.this_secret_version.secret_string)
}

