##shell scripting equivalent is sample_string="Hello world"

##to print in shell script
output "sample_string1" {
  value=var.sample_string
}
##shell scripting equivalent is echo sample_string=$sample_string




##in the above case we are printing just variable, if variable is combination of some strings then following is the syntax
#${} is mandatory to include variavble in between a string

output "sample_string2" {
  value="value of sample string=${var.sample_string}"
}

output "sample_list2"{
  value=var.sample_list[1]
}



output "sample_dict1" {
  value = "value from dictopnary is ${var.sample_dict.number2}"
}

output "sample_dict2" {
  value = "value from dictopnary is ${var.sample_dict.boolean}"
}


output "env"{
  value=var.env
}

output "auto_num1"{
  value=var.auto_num1
}