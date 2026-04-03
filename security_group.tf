resource "aws_security_group" "aurora_security" {

name = "aurora-security-01"
vpc_id = data.aws_vpc.main.id
description = "aurora security group"

ingress  {

     description = "aurora security group"
     from_port = "5432"
     to_port = "5432"
     protocol = "tcp"
     cidr_blocks = ["0.0.0.0/0"]

}


}
