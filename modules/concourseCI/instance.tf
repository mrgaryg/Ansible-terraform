//data "aws_ami" "instance_ami" {
//  most_recent = true
//
//  filter {
//    name = "name"
//
//    values = [
//      "amzn2-ami-hvm-*-x86_64-gp2",
//    ]
//    amzn2-ami-hvm-2.0.20190115-x86_64-gp2 (ami-0fad7378adf284ce0)
//  }
//
//  filter {
//    name = "owner-alias"
//
//    values = [
//      "amazon",
//    ]
//  }
//}

resource "aws_instance" "ci_instance" {
  ami = "ami-0fad7378adf284ce0"
  instance_type = "t2.micro"
  subnet_id = "${var.public_subnet_id}"
  key_name = "${aws_key_pair.ci_instance_key.key_name}"
  associate_public_ip_address = true

  user_data = "${file("${path.module}/scripts/user_data.tpl")}"
  vpc_security_group_ids = ["${aws_security_group.ci_group.id}"]
  tags {
    Name = "CI"
  }
}

resource "aws_key_pair" "ci_instance_key" {
  key_name = "ci_key"
  public_key = "${file("${path.root}/ci_key.pub")}"
}