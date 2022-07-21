resource "aws_secretsmanager_secret" "secrettwo" {
  name = "secrettwo"
  recovery_window_in_days = 0                  # not recovery
}

resource "aws_secretsmanager_secret_version" "version" {
  secret_id     = aws_secretsmanager_secret.secrettwo.id
  secret_string = tls_private_key.mykey.private_key_pem
}

