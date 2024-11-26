variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of the key pair to access the instance"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID to associate with the security group"
  type        = string
}

variable "domain_name" {
  description = "The domain name registered in Route 53"
  type        = string
}

variable "subdomain" {
  description = "Subdomain for the boxer app"
  type        = string
  default     = "boxer"  # Example subdomain (e.g., 'todo.example.com')
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
  default = ["subnet-09ac1ed090b0561c9", "subnet-0efaefe6cef78791d", "subnet-077ef194287d71df9"]
}
