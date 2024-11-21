provider "aws" {
   profile = "configs"
   region  = "ap-southeast-1"
    default_tags {
                tags = {
                    name = "aws"
                }
    }
}