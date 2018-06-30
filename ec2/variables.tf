variable "admin_ip" {
  default     = ["127.0.0.1/32"]
  description = "admin IP addresses in CIDR format"
}

variable "ec2_vpc_id" {
  description = "ID of AWS VPC"
  default     = "vpc-XXX"
}

variable "ec2_subnet" {
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
# t2.large = 2 vCPU, 8 GiB RAM
variable "ec2_instance_type" {
  default = "t2.large"
}

# Refer to https://cloud-images.ubuntu.com/locator/ec2/
variable "ec2_ami" {
  type    = "map"
  default = {
    "ap-northeast-1" = "ami-940cdceb"
    "ap-northeast-2" = "ami-467acf28"
    "ap-northeast-3" = "ami-85b3bdf8"
    "ap-south-1"     = "ami-188fba77"
    "ap-southeast-1" = "ami-51a7aa2d"
    "ap-southeast-2" = "ami-47c21a25"
    "ca-central-1"   = "ami-db9e1cbf"
    "cn-north-1"     = "ami-b117c9dc"
    "cn-northwest-1" = "ami-39b8ac5b"
    "eu-central-1"   = "ami-de8fb135"
    "eu-west-1"      = "ami-2a7d75c0"
    "eu-west-2"      = "ami-6b3fd60c"
    "eu-west-3"      = "ami-20ee5e5d"
    "sa-east-1"      = "ami-8eecc9e2"
    "us-east-1"      = "ami-759bc50a"
    "us-east-2"      = "ami-5e8bb23b"
    "us-gov-west-1"  = "ami-0661f767"
    "us-west-1"      = "ami-4aa04129"
    "us-west-2"      = "ami-ba602bc2"
  }
}
