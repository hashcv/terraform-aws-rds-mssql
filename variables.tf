// Environment name, used as prefix to name resources.
variable "environment" {}
variable "identifier" {
  default = "my-rds-msssql-instance"
}

// The allocated storage in gigabytes.
variable "rds_allocated_storage" {
  default = "250"
}

// The instance type of the RDS instance.
variable "rds_instance_class" {
  default = "db.m4.2xlarge"
}

variable "timezone" {
  default = "Central Europe Standard Time"
}

variable "rds_storage_type" {
  default = "gp2"
}

variable "rds_iops" {
  default = 1000
}

// Specifies if the RDS instance is multi-AZ.
variable "rds_multi_az" {
  default = "false"
}

variable "rds_publicly_accessible" {
  default = "false"
}

// Username for the administrator DB user.
variable "mssql_admin_username" {}

// Password for the administrator DB user.
variable "mssql_admin_password" {}

// A list of VPC subnet identifiers.
variable "vpc_subnet_ids" {
  type = "list"
}
  
variable "rds_option_group_name" {
  default = "main-mssql"
}

variable "auto_minor_version_upgrade" {
  default = "true"
}

// The VPC identifier where security groups are going to be applied.
variable "vpc_id" {}

// List of CIDR blocks that will be granted to access to mssql instance.
variable "vpc_cidr_blocks" {
  type    = "list"
  default = []
}

// Additional list of CIDR blocks that will be granted to access to mssql instance.
// These list is meant to be used in the vpn security group.
variable "vpc_cidr_blocks_vpn" {
  type    = "list"
  default = []
}

// Determines whether a final DB snapshot is created before the DB instance is deleted.
variable "skip_final_snapshot" {
  type    = "string"
  default = "false"
}
