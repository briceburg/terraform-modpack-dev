module "larry" {
    source = "../../modules/larry"
}

module "curly" {
    source = "../../modules/curly"
}

module "moe" {
    source = "../../modules/moe"
}

resource "test_assertions" "stooges" {
  component = "stooges"

  check "foo" {
    description = "TBD: evaluate output of larry. ensure moe looks amazed."
    condition   = "foo" == "bar" ? false : true
  }

  equal "equal-example" {
    description = "example 'equal' assertion"
    got         = module.larry.path
    want        = module.larry.path
  }
}
