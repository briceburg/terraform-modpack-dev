# terraform-modpack-dev

develop and release known working sets of modules (aka a "modpack") under a single version. 

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
