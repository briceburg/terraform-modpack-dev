# terraform-modpack-dev

develop and release a known working set of modules (aka a "modpack") to a [terraform-modpack-release](https://github.com/briceburg/terraform-modpack-release) repository.

## usage

* make [modules/](./modules) changes...
* make [tests/](./tests) changes to test module changes...

    ```sh
    terraform test
    ```

* when happy, [release](./bin/release) changes

    ```sh
    bin/release 0.0.0-alphaAardvark
    ```

    ```sh
    # alternatively, to overwrite an existing tag;
    RELEASE_PUSH_FLAGS="--force" bin/release 0.0.0-alphaAardvark
    ```

### example modpack usage

after release, reference modules within the modpack-release repository using [sub-directory notation](https://www.terraform.io/language/modules/sources#modules-in-package-sub-directories);

```terraform

module "larry" {
    source = "github.com/briceburg/terraform-modpack-release.git//larry?ref=0.0.0-alphaAardvark"
}

output "foo" {
    value = module.larry.info
}
...
```
