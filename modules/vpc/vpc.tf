resource "aws_vpc" "main_vpc" {
  cidr_block = "${var.primary_cidr}"
  tags {
    Name = "Non Default Vpc"
  }
}