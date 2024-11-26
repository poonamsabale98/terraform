this_ami      = "ami-042e76978adeb8c48"  # Use an appropriate AMI ID for your region
instance_type = "t2.micro"
key_name      = "batmobile"     # Replace with your EC2 key pair name
vpc_id        = "vpc-03276f1b3bce97eec"           # Replace with your VPC ID
subnet_ids    = ["subnet-07d50e514206d0408", "subnet-0cb026ebf3a0bf22e", "subnet-0a7d16e970a6d7b9f", "subnet-0c695957469386d8e"]
domain_name   = "swapnilbdevops.online"            # Replace with your domain name
subdomain     = "student"                   # Subdomain to bind (e.g., 'todo.example.com')