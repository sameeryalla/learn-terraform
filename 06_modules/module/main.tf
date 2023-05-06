resource "null_resource" "nothing1"{
  provisioners "remote-exec"{
    command="echo Hello from module1"
  }

}

resource "null_resource" "nothing2"{
  provisioners "remote-exec"{
    command="echo Hello from module2"
  }

}
resource "null_resource" "nothing3"{
  provisioners "remote-exec"{
    command="echo Hello from module3"
  }

}
resource "null_resource" "nothing4"{
  provisioners "remote-exec"{
    command="echo Hello from module4"
  }

}