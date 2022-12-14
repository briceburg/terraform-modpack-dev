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

  check "larry_amazes_moe" {
    description = "evaluate output of larry module. ensure moe looks amazed."
    condition   = module.larry.x_curly.x_moe.info == "moe looks amazed"
  }

  equal "equal-example" {
    description = "example 'equal' assertion"
    got         = module.larry.path
    want        = module.larry.path
  }
}
