variable "fruits1"{
  default= {
      apple=10
      orange=25
      banana=100
  }
}

resource "null_resource" "fruitsdtl" {
  for_each = var.fruits1
  provisioner "local-exec" {
    command="echo fruitName = ${each.key} -  ${each.value}"
  }
}

variable "fruits2" {
  default = {
    apple={name="Apple"
    count=10
    }
    orange = {name="Orange"
    count=25
    }
    banana = {name="Banana"
    count=100
    }
  }
}

resource "null_resource" "fruitsdtl2" {
  for_each = var.fruits2
  provisioner "local-exec" {
    command = "echo fruitName - ${each.key} - ${each.value["name"]} -${each.value["count"]}"
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



