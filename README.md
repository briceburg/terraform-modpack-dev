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
