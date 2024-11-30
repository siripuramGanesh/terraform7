resource "aws_security_group" "terraform-security-group"{
    description="I am creating my first security group terrafrom"
    egress{
        from_port=0
        to_port=0
        protocol= "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress{
        from_port= 22
        to_port=   22
        protocol="tcp"
        cidr_blocks =["0.0.0.0/0"]
        ipv6_cidr_blocks=["::/0"]
    }

    tags={
        Name="allow_sssssssh"
    }
}

resource "aws_instance" "my_first_instance"{
    ami = data.aws_ami.sampleami.id
    instance_type="t3.micro"
    vpc_security_group_ids =[aws_security_group.terraform-security-group.id]
    tags={
        Name="terraform"
    }
}