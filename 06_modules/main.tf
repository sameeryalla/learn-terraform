module "sample"{
  source="./module"
  input=module.dummy.dummy_op
}

module "dummy"{
  source="./dummy"
}