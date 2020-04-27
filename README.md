# ocaml-rust-starter

An example project using [ocaml-rs](https://github.com/zshipko/ocaml-rs).

## New project checklist

- [ ] Update `dune-project` with the name of your project
- [ ] Update `Cargo.toml` with the name of your project and any dependencies
- [ ] Remove `src/ocaml_rust_example.rs`
- [ ] Add your OCaml file(s) to `src`
- [ ] Edit `src/lib.rs`
- [ ] Update `src/dune` with the name of your project in place of `ocaml_rust_example`/`ocaml-rust-example`
- [ ] Update `test/dune` with the name of your project in place of `ocaml-rust-example` in the `libraries` section

## Building

    dune build

to run the tests:

    dune runtest


