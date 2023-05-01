resource "null_resource" "null" {
  count=10
}

variable "fruits" {
   default =[ "Mango","Apple","Banana" ]
}

resource "null_resource" "fruits" {
    count=length(var.fruits)

    provisioner "local-exec"{
      command="echo fruit name ${var.fruits[count.index]}"
    }
}