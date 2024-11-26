this_ami      = "ami-03fa85deedfcac80b  "  # Use an appropriate AMI ID for your region
instance_type = "t2.micro"
key_name      = "poonam"     # Replace with your EC2 key pair name
vpc_id        = "vpc-01fdbf134c5d4beee"           # Replace with your VPC ID
subnet_ids    = ["subnet-0efaefe6cef78791d", "subnet-09ac1ed090b0561c9", "subnet-077ef194287d71df9"]
domain_name   = "devopspoonam.fun"            # Replace with your domain name
subdomain     = "student"                   # Subdomain to bind (e.g., 'todo.example.com')
