provider "aws" {
      region = "us-east-1"
      profile = "configs"
      shared_credentials_files = ["/home/anup/.aws/credentials"]
    
}

#LockID
terraform {
    backend "s3" {
        bucket = "poonam1006"
        key = "terraform.tfstate"
        dynamodb_table = "cbz38"
        region = "ap-southeast-1"
        profile = "configs"
        shared_credentials_files = ["/home/poonam/.aws/credentials"]
    }
}


resource "aws_instance" "ths_instance" {
  ami = "ami-047126e50991d067b"
  //key_name = "poonam"
  instance_type = "t2.micro"
  //security_groups = ["sg-02582bf615cdb71bb"]
  count = 1
  
  
  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y apache2
    sudo echo "hello world this is Batc24" >> /var/www/html/index.html
    EOF
   tags = {
    Name = "first_terraform_instance"

  } 
    
}