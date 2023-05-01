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

output "security_group_vpc"{
  value=data.aws_security_group.selected.vpc_id
}

#all aws_security_group
data "aws_security_groups" "groupsList"{}
output "groupsList" {
  value=data.aws_security_groups.groupsList
}