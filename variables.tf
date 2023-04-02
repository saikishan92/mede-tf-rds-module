variable "allocated_storage" {
  type        = number
  description = "The storage requrired by rds in Gibibytes"
  default     = null
}
variable "max_allocated_storage" {
  type        = number
  description = "the upper limit to which Amazon RDS can automatically scale the storage of the DB instance"
  default     = null
}
variable "auto_minor_version_upgrade" {
  type        = bool
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
  default     = true
}
variable "backup_retention_period" {
  type        = number
  description = "The time after which rds backups will be moved to cold storage. Must be between 0 and 35"
}
variable "backup_window" {
  type        = string
  description = "The daily time range (in UTC) during which automated backups are created if they are enabled."
  default     = null
}
variable "db_subnet_group_name" {
  type        = string
  description = "The name assigned to db subnet group"
  default     = null
}
variable "deletion_protection" {
  type        = bool
  description = "If the DB instance should have deletion protection enabled."
  default     = false
}
variable "engine_type" {
  type        = string
  description = "The database engine to use"
  default     = ""
}
variable "engine_version" {
  type        = string
  description = "The version of the engine used by rds"
  default     = null
}
variable "identifier" {
  type        = string
  description = "The name given to the rds"
  default     = null
}
variable "instance_class" {
  type        = string
  description = "The instance type of the RDS instance."
  default     = null
}
variable "maintenance_window" {
  type        = string
  default     = null
  description = "The window to perform maintenance in. Syntax: \"ddd:hh24:mi-ddd:hh24:mi\". Eg: \"Mon:00:00-Mon:03:00\""
}
variable "monitoring_interval" {
  type        = number
  default     = null
  description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance"
}
variable "multi_az" {
  type        = bool
  description = "The number of az's the rds will be launched in"
  default     = false
}
variable "db_name" {
  type        = string
  description = "The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance."
  default     = null
}
variable "subnet_ids" {
  type        = list(any)
  description = "The subnets required for launching rds"
  default     = null
}
variable "db_instance_password" {
  type        = any
  default     = null
  description = "Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file."
}
variable "port" {
  type        = number
  description = "The port on which the DB accepts connections."
  default     = null
}
variable "publicly_accessible" {
  type        = bool
  description = "Bool to control if instance is publicly accessible. Default is false"
  default     = false
}
variable "skip_final_snapshot" {
  type        = bool
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted."
  default     = false
}
variable "storage_type" {
  type        = string
  description = "One of \"standard\" (magnetic), \"gp2\" (general purpose SSD), \"gp3\" (general purpose SSD that needs iops independently) or \"io1\" (provisioned IOPS SSD). The default is \"io1\" if iops is specified, \"gp2\" if not."
  default     = null
}
variable "storage_encrypted" {
  type        = bool
  description = "Specifies whether the DB instance is encrypted."
  default     = false
}
variable "username" {
  type        = string
  description = "Username for the master DB user"
  default     = null
}
variable "vpc_security_group_ids" {
  type        = list(string)
  description = "List of VPC security groups to associate."
  default     = null
}
variable "performance_insights_enabled" {
  type        = bool
  description = "Specifies whether Performance Insights are enabled. Defaults to false"
  default     = false
}
variable "license_model" {
  type        = string
  description = "License model information for this DB instance."
  default     = null
}
variable "create_db_subnet_group" {
  type    = bool
  default = false
  description = "whether to create db subnet_group"
}
variable "db_subnet_group" {
  type        = string
  description = "db subnet group name"
  default     = null
}
variable "aws_db_parameter_group_name" {
  type        = string
  default     = null
  description = "the aws db parameter group name"
}
variable "rds_instance_parameter_group_family" {
  type        = string
  default     = null
  description = "the rds instance parameter group family"
}
variable "db_parameter_group_description" {
  type        = string
  default     = ""
  description = "Instance parameter group desc"
}
variable "tags" {
  description = "A map of tags to add to VPC"
  type        = map(string)
  default     = {}
}
variable "create_db_parameter_group" {
  type        = bool
  description = "to create db parameter group or not"
  default     = false
}
variable "create_rds_instance" {
  type = bool
  description = "to create rds instance"
  default = false
}