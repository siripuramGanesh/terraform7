output "private_ip"{
    value=aws_instance.my_first_instance.private_ip
    sensitive=false
    description="this is the first ip address"
}