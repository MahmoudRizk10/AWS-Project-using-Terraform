resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "db_subnet_group"
  subnet_ids = [module.network.private_subnet_id_A, module.network.private_subnet_id_B]
}
resource "aws_elasticache_subnet_group" "cache-subnet-group" {
  name       = "cache-subnet-group"
  subnet_ids = [module.network.private_subnet_id_A, module.network.private_subnet_id_B]
}