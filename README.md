# ocaml-rust-starter

An example project using [ocaml-rs](https://github.com/zshipko/ocaml-rs).

## New project checklist

- [ ] Update `dune-project`
- [ ] Update `Cargo.toml`
- [ ] Update `src/dune` with the name of your project in place of `ocaml_rust_example`/`ocaml-rust-example`
- [ ] Update `test/dune` with the name of your project in place of `ocaml-rust-example` in the `libraries` section
- [ ] Rename `ocaml-rust-starter.opam` to match the name of your project
- [ ] Remove `src/ocaml_rust_example.ml` and `src/ocaml_rust_example.mli` and add your own OCaml files
- [ ] Edit `src/lib.rs`

## Building

    dune build

to run the tests:

    dune runtest


