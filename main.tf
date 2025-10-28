resource "aws_vpc" "myownvpc" {
    cidr_block = "172.16.0.0/16"
    tags = {
      Name = " myfirstvpc"
    }
  
}
resource "aws_subnet" "myownsubnet" {
    vpc_id = aws_vpc.myownvpc.id
    cidr_block = "172.16.1.0/24"
    availability_zone = "ap-south-1a"
    tags = {
      Name = "myfirstsubnet"
    }
  
}