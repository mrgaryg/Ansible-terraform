variable "primary_cidr" {
  default     = "172.20.0.0/16"
  description = "Cidr for main vpc"
}

variable "public_subnet_cidr" {
  default = "172.20.10.0/24"
}

variable "private_subnet_cidr" {
  default = "172.20.20.0/24"
}

