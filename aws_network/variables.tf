# Default tags
variable "default_tags" {
  default = {
    "Owner" = "ivy"
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Name prefix
variable "prefix" {
  default     = "week5"
  type        = string
  description = "Name prefix"
}

# Provision public subnets in custom VPC
variable "private_subnet_cidrs" {
  default     = ["10.20.0.0/24", "10.20.1.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}

# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.20.0.0/16"
  type        = string
  description = "VPC to host static web site"
}

# Variable to signal the current environment 
variable "env" {
  default     = "test"
  type        = string
  description = "Deployment Environment"

}















    variable "private_cidr_blocks" {
      type        = list(string)
      description = "CIDR blocks for the private subnets."
    }

    # You also need this one, as you are passing it now:
    variable "public_subnet_cidrs" {
      type        = list(string)
      description = "CIDR blocks for the public subnets."
    }
