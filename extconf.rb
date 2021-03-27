abort "Rust compiler required (https://www.rust-lang.org/)" if `which rustc`.empty?

require 'mkmf'
create_makefile 'prubybility-rust'
`rake rust_build`