variable "commontags"{
    type=map
    default={
    Project="Expense"
    Environment="Development"
    Terraform="true"
    }

}

variable "instance_name"{
    type=list(string)
    default=["frontend","backend","mysql"]
}