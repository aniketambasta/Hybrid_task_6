provider "aws" {
  region = "ap-south-1"
  profile = "Aniket"
}
resource "aws_db_instance" "anidb" {
  allocated_storage    = 15
  identifier           = "dbinstance"
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7.30"
  instance_class       = "db.t2.micro"
  name                 = "anidb"
  username             = "Aniket"
  password             = "Ambasta"
  parameter_group_name = "default.mysql5.7"
  publicly_accessible = true
  skip_final_snapshot  = true
  iam_database_authentication_enabled = true
  
  tags = {
    Name = "anidb-1"
  }
}


output "ip" {
    value = "${aws_db_instance.anidb.address}"
}
