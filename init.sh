name=$1
public_name=${2-$name}

replace() {
  is_gnu=`sed --version`
  if [ $? -ne 0 ]; then
    sed -i "" $@
  else
    sed -i $@
  fi
}

replace 's/ocaml-rust-starter/'"$public_name"'/g' dune-project
replace 's/ocaml_rust_starter/'"$name"'/g' src/dune
replace 's/ocaml-rust-starter/'"$public_name"'/g' src/dune
replace 's/ocaml-rust-starter/'"$public_name"'/g' test/dune
replace 's/ocaml-rust-starter/'"$public_name"'/g' Cargo.toml
printf "# $public_name\n" > README.md
mv ocaml-rust-starter.opam $public_name.opam
mv src/ocaml_rust_starter.ml src/$name.ml
mv src/ocaml_rust_starter.mli src/$name.mli
echo "" > test/test.ml
rm init.sh
