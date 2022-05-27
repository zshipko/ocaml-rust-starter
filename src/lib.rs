#[ocaml::func]
#[ocaml::sig("unit -> string")]
pub fn hello_world() -> &'static str {
    "hello, world!"
}
