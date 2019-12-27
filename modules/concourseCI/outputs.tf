output "key" {
  value = aws_key_pair.ci_instance_key.public_key
}

output "instance_ip" {
  value = aws_instance.ci_instance.public_ip
}

