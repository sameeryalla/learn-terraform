variable "sample_string"  {
  default="Hello world"
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

#dictonary/MAP
variable "sample_dict" {
  default={
    number1= 100
    string1="Hello"
    boolean=true
    number2=123
  }
}

variable "env" {}
