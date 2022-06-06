# ocaml-rust-starter

An example project using [ocaml-rs](https://github.com/zshipko/ocaml-rs) to call Rust functions from OCaml.

If you're looking for an example of linking an OCaml library into a Rust program take a look at [rust-ocaml-starter](https://github.com/zshipko/rust-ocaml-starter)

## New project checklist

- [ ] Update `README.md`
- [ ] Update the project name in `dune-project`
- [ ] Update the crate name in `Cargo.toml`
- [ ] Update `src/dune` and `test/dune` with the name of your project in place of `ocaml_rust_example`/`ocaml-rust-example`
- [ ] Rename `ocaml-rust-starter.opam` to match the name of your project
- [ ] Remove `src/ocaml_rust_example.ml` and `src/ocaml_rust_example.mli` and add your own OCaml files
- [ ] Update `build.rs`
- [ ] Edit `src/lib.rs`
- [ ] Add your tests to `test/test.ml`
- [ ] Use `cargo vendor` if you intend to make the project installable using opam

Many of the renaming steps can be automated using `init.sh`:

```shell
$ ./init.sh my_project my-project
```

`init.sh` accepts two arguments: the `name` of the OCaml project and the `public_name`, if they are the same then one argument is acceptable.

NOTE: `init.sh` is destructive and can only be executed once (it will remove itself) - make sure you have no modifications that you want to keep before running `init.sh`.

## Building

    dune build

to run the tests:

    dune runtest

to load your library into an interactive sesssion:

  OCAML_INTEROP_NO_CAML_STARTUP=1 dune utop

The `OCAML_INTEROP_NO_CAML_STARTUP` environment variable should be set to ensure
the library is linked correctly.


