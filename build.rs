pub fn main() -> std::io::Result<()> {
    ocaml_build::Sigs::new("src/ocaml_rust_starter.ml").generate()
}
