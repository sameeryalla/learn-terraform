variable "fruits"{
  default= {
      apple=10
      orange=25
      banana=100
  }
}

resource "null_resource" "fruits"{


  provisioner "local-exec" {
  command="echo ${length(var.fruits)}}"
  }
}