variable "sample_string"  {
  default="Hello world"
}
##shell scripting equivalent is sample_string="Hello world"

##to print in shell script
output "sample_string" {
  value=var.sample_string
}
##shell scripting equivalent is echo sample_string=$sample_string


