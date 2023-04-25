variable "sample_string"  {
  default="Hello world"
}
##shell scripting equivalent is sample_string="Hello world"

##to print in shell script
output "sample_string" {
  value=var.sample_string
}
##shell scripting equivalent is echo sample_string=$sample_string

##in the above case we are printing just variable, if variable is combination of some strings then following is the syntax
#${} is mandatory to include variavble in between a string
variable "sample_string1"  {
  default="Hello world"
}
output "sample_string1" {
  value="value of sample string=${var.sample_string}"
}


# different data type
variable "sample_numer" {
  default =100
}
variable "sample_boolean" {
  default =true
}

#variable types
#list
variable "sample_list" {
  default = [
    100,
    "Hello",
    true,
    123
  ]
}

output "sample_list2"{
  value=var.sample_list[2]
}