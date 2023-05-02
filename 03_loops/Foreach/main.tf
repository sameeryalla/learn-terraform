variable "fruits"{
  default= {
      apple=10
      orange=25
      banana=100
  }
}

#resource "null_resource" "fruits"{
#
#  count=length(var.fruits)
#  provisioner "local-exec" {
#    command="echo fruitname= ${var.fruits[count.index]}"
#  command="echo ${length(var.fruits)}}"
#  }
#}

resource "null_resource" "fruitsdtl" {
  for_each = var.fruits
  provisioner "local-exec" {
    command="echo fruitName = ${each.key} -  ${each.value}"
  }
}