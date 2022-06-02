provider "aws" {
  region = "eu-west-2"
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE RDS MySQL DB
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_db_instance" "example" {
  identifier             = "mysql-db-1"
  engine                 = "mysql"
  engine_version         = "5.7"
  name                   = "mydb"
  username               = "tstdb01"
  password               = "tstdb012345"
  instance_class         = "db.t2.micro"
  allocated_storage      = 20
  skip_final_snapshot    = true
  parameter_group_name   = "default.mysql5.7"
}

output "rds"{
value = aws_db_instance.example.name
}