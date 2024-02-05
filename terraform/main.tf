

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_web_instance" {
  ami           = "ami-0277155c3f0ab2930"  
  instance_type = "t2.micro"
  subnet_id     = "subnet-06f693f15a648f55e"  
  key_name      = "myassikey"  
}

resource "aws_ecr_repository" "webapp_repo" {
  name = "webapp"
}

resource "aws_key_pair" "assignmentkey" {
  key_name   = "myassikey"
  public_key = file("myassikey.pub")
}
resource "aws_ecr_repository" "mysql_repo" {
  name = "mysql"
}

output "ec2_instance_ip" {
  value = aws_instance.my_web_instance.public_ip
}

output "webapp_repo_url" {
  value = aws_ecr_repository.webapp_repo.repository_url
}

output "mysql_repo_url" {
  value = aws_ecr_repository.mysql_repo.repository_url
}
