resource "aws_instance" "this_ubuntu" {

    ami = "ami-04b6019d38ea93034" 
    instance_type = "t2.micro" 
    key_name= "jenkins"
    vpc_security_group_ids = ["sg-0f0270676d737fb48"]
    count =5  #loop 
    tags = {
      purpose = "webserver"
    } 
    

}   