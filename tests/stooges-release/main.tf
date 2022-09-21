module "larry" {
    source = "github.com/briceburg/terraform-modpack-release.git//larry?ref=0.0.0-alphaAardvark"
}

resource "test_assertions" "stooges-release" {
  component = "stooges-release"

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