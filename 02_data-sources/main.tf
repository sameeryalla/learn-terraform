#aws_security_group
data "aws_security_group" "selected"{
  name="allow-all"
}

output "security_group_attributes"{
  value=data.aws_security_group.selected
}

output "security_group_id"{
  value=data.aws_security_group.selected.id
}