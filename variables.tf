variable "instance_type" {
  description = "Instance Type"
  type = string
  default = "t2.micro"
}

variable "instance_count" {
  description = "Number of ec2 instances"
  type = number
  default = 1
}

variable "enable_public_ip" {
  description = "Enable public access or not"
  type = bool
  default = true
}

variable "tag_name" {
  type=map(string)
  description = "Tags for client"
  default = {
      client = "nowfloats"
  }
}