provider "aws" {
   profile = "configs"
   region  = "ap-northeast-2"
   shared_credentials_files = ["/home/poonam/.aws/credentials"]
    default_tags {
                tags = {
                    name = "aws"
                }
    }
}