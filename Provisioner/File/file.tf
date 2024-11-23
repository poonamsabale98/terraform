provider "aws" {
    region =  "ap-southeast-1"
    profile = "configs"
}
 resource "aws_instance" "this_aws_instance" {
    ami = "ami-0c45ac6ebf9cf6245"
    vpc_security_group_ids = ["sg-03456a14525e928dc"]
    key_name = "marigold"
    instance_type = "t2.micro"
     
     provisioner "file" {
    source      = "readme.md"
    destination = "/home/ec2-user/readme.md"    #ec2-user so ami amazon linux,ubuntu then ami ubuntu
      connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("${path.module}/.ssh/id_rsa.pem")
    host     = "${self.public_ip}"
  }
  
  
  }


}