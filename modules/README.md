# modpack-release

a working set of modules under a single version. aka a "modpack".

see [terraform-modpack-dev](https://github.com/briceburg/terraform-modpack-dev) for module development.

## usage

reference modules within the modpack using [sub-directory notation](https://www.terraform.io/language/modules/sources#modules-in-package-sub-directories);

```terraform

module "larry" {
    source = "github.com/briceburg/terraform-modpack-release.git//larry?ref=0.0.0-alphaAardvark"
}

output "foo" {
    value = module.larry.info
}
...
```

## philosophy

Infra should be basic and intuitive. Not overly flexible.

* :thought_balloon: Design for re-use while getting rid of dials and knobs.
  * :bulb: Provide _discoverable_ conventions that don't require input.
  * :zap: If something needs customization, it should stand out.
