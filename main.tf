provider "aws" {
  region = "us-east-2"
}

resource "aws_redshift_cluster" "redshift" {
  cluster_identifier = "my-redshift-cluster"
  node_type = "dc2.large"
  number_of_nodes = 2
  database_name = "mydatabase"
  master_username = "redshift"
  master_password = "Myredshift1"
  vpc_security_group_ids = ["sg-097ba5620d21176c7"]
  availability_zone = "us-east-2a"
}