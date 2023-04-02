resource "aws_db_instance" "aws_db_instance" {
  count = var.create_rds_instance ? 1 : 0

  allocated_storage            = var.allocated_storage
  max_allocated_storage        = var.max_allocated_storage
  auto_minor_version_upgrade   = var.auto_minor_version_upgrade
  backup_retention_period      = var.backup_retention_period
  backup_window                = var.backup_window
  db_subnet_group_name         = var.db_subnet_group_name
  deletion_protection          = var.deletion_protection
  engine                       = var.engine_type
  engine_version               = var.engine_version
  identifier                   = var.identifier
  instance_class               = var.instance_class
  maintenance_window           = var.maintenance_window
  monitoring_interval          = var.monitoring_interval
  multi_az                     = var.multi_az
  db_name                      = var.db_name
  password                     = var.db_instance_password
  port                         = var.port
  publicly_accessible          = var.publicly_accessible
  skip_final_snapshot          = var.skip_final_snapshot
  storage_type                 = var.storage_type
  storage_encrypted            = var.storage_encrypted
  username                     = var.username
  vpc_security_group_ids       = var.vpc_security_group_ids
  performance_insights_enabled = var.performance_insights_enabled
  license_model                = var.license_model

  tags = var.tags
}

resource "aws_db_subnet_group" "subnetgroup" {
  count = var.create_db_subnet_group && var.create_rds_instance ? 1 : 0

  name       = var.db_subnet_group
  subnet_ids = var.subnet_ids
  tags       = var.tags
}

resource "aws_db_parameter_group" "aws_db_parameter_group" {
  count       = var.create_db_parameter_group ? 1 : 0
  name        = var.aws_db_parameter_group_name
  family      = var.rds_instance_parameter_group_family
  description = var.db_parameter_group_description
  tags        = var.tags
}

