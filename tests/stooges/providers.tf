terraform {
  required_providers {
    # required by 'terraform test' experiment. check deprecation when experiment ends.
    test = {
      source = "terraform.io/builtin/test"
    }
  }
}