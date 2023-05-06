resource "null_resource" "nothing1"{
  provisioner "local-exec"{
    command="echo Hello from module1"
  }

}

resource "null_resource" "nothing2"{
  provisioner "local-exec"{
    command="echo Hello from module2"
  }

}
resource "null_resource" "nothing3"{
  provisioner "local-exec"{
    command="echo Hello from module3"
  }

}
resource "null_resource" "nothing4"{
  provisioner "local-exec"{
    command="echo Hello from module4 input is ${input}"
  }

}

variable input {}