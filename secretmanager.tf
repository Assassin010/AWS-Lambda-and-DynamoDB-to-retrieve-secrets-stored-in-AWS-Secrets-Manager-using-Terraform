resource "aws_secretsmanager_secret" "gauthiersecret" {
  name = "gauthiersecret"

}

resource "aws_secretsmanager_secret_version" "test" {
  secret_id     = aws_secretsmanager_secret.gauthiersecret.id
  secret_string = jsonencode({ "Access Key" = var.AccessKey, "Secret Access Key" = var.SecretAccessKey })
  depends_on = [
    aws_secretsmanager_secret.gauthiersecret
  ]
}
