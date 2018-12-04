variable "admin_ip" {
  default     = ["127.0.0.1/32"]
  description = "admin IP addresses in CIDR format"
}

variable "ec2_vpc_id" {
  description = "ID of AWS VPC"
  default     = "vpc-XXX"
}

variable "ec2_subnet_id" {
  description = "ID of AWS VPC subnet"
  default     = "subnet-YYY"
}

variable "ec2_region" {
  description = "AWS region to launch servers"
  default     = "eu-west-1"
}

variable "ec2_ssh_key_name" {
  default = "default"
}

# https://aws.amazon.com/ec2/instance-types/
# t3.large = 2 vCPU, 8 GiB RAM
variable "ec2_instance_type" {
  default = "t3.large"
}

# Refer to https://cloud-images.ubuntu.com/locator/ec2/
variable "ec2_ami" {
  type    = "map"
  default = {
    "ap-northeast-1" = "ami-0fd02119f1653c976"
    "ap-northeast-2" = "ami-096560874cb404a4d"
    "ap-northeast-3" = "ami-064d6dc91cdb4daa8"
    "ap-south-1"     = "ami-01187fe59c07cd350"
    "ap-southeast-1" = "ami-0efb24bbbf33a2fd7"
    "ap-southeast-2" = "ami-03932cb7d3a1a69af"
    "ca-central-1"   = "ami-0388b9f812caf5c3f"
    "eu-central-1"   = "ami-080d06f90eb293a27"
    "eu-west-1"      = "ami-02790d1ebf3b5181d"
    "eu-west-2"      = "ami-06328f1e652dc7605"
    "eu-west-3"      = "ami-0697abcfa8916e673"
    "sa-east-1"      = "ami-04fb8967affdf73b6"
    "us-east-1"      = "ami-0d2505740b82f7948"
    "us-east-2"      = "ami-0cf8cc36b8c81c6de"
    "us-west-1"      = "ami-09c5eca75eed8245a"
    "us-west-2"      = "ami-0f05ad41860678734"
  }
}
