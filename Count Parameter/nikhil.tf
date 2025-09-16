resource "aws_instance" "web"{
    ami =  "ami-0a716d3f3b16d290c"
    instance_type = var.instance_type[count.index]
    tags ={
        Name = var.instance_name[count.index]
    }
    count =3 
}



variable  instance_type {
  type        = list(string)
  default     = [
    "t2.nano","t2.micro","t2.small"
  ]
}

variable instance_name{
    type = list(string)
    default = [
        "web-instance",
        "db-instance",
        "devOps-instance"
    ]
}