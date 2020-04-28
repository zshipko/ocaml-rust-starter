name=$1
public_name=${2-$name}
sed -i "" 's/ocaml-rust-starter/'"$public_name"'/g' dune-project
sed -i "" 's/ocaml_rust_starter/'"$name"'/g' src/dune
sed -i "" 's/ocaml-rust-starter/'"$public_name"'/g' src/dune
sed -i "" 's/ocaml-rust-starter/'"$public_name"'/g' test/dune
sed -i "" 's/ocaml-rust-starter/'"$public_name"'/g' Cargo.toml
printf "# $public_name\n" > README.md
mv ocaml-rust-starter.opam $public_name.opam
mv src/ocaml_rust_starter.ml src/$name.ml
mv src/ocaml_rust_starter.mli src/$name.mli
echo "" > test/test.ml
rm -rf .git
rm init.sh
git init
git add $public_name.opam
git add src/$name.ml src/$name.mli src/lib.rs src/dune
git add test/dune test/test.ml
git add dune-project
git add Cargo.toml
git add LICENSE.md
git add README.md

