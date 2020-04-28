name=$1
public_name=${2-$name}
sed -i 's/ocaml_rust_starter/'"$name"'/g' src/dune
sed -i 's/ocaml-rust-starter/'"$public_name"'/g' src/dune
sed -i 's/ocaml-rust-starter/'"$public_name"'/g' test/dune
sed -i 's/ocaml-rust-starter/'"$public_name"'/g' Cargo.toml
printf "# $public_name\n" > README.md
mv ocaml-rust-starter.opam $public_name.opam
mv src/ocaml_rust_starter.ml src/$1.ml
mv src/ocaml_rust_starter.mli src/$1.mli
echo "" > test/test.ml
#rm -rf .git
rm init.sh
