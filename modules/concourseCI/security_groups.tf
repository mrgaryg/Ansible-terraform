resource "aws_security_group" "ci_group" {

  name = "CI group"
  vpc_id = "${var.vpc_id}"
  tags {
    Name = "CI sg"
  }

  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["${var.cidr_to_whitelist}"]
  }

  ingress {
    from_port = 8080
    protocol = "tcp"
    to_port = 8080
    cidr_blocks = ["${var.cidr_to_whitelist}"]
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}