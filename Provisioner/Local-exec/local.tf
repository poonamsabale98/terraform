provider "aws" {
    region =  "ap-southeast-1"
    profile = "configs"
}
 resource "aws_instance" "this_aws_instance" {
    ami = "ami-0c45ac6ebf9cf6245"
    vpc_security_group_ids = ["sg-03456a14525e928dc"]
    key_name = "marigold"
    instance_type = "t2.micro"
     

   provisioner "local-exec" {
    command = "echo ${self.private_ip} >> /tmp/private_ips.txt "
  }
    provisioner "local-exec" {
    working_dir = "/tmp/"
    command = "echo ${self.private_ip} >> workingdir_private_ips.txt "
  }


}