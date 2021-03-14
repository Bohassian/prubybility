abort "Rust compiler required (https://www.rust-lang.org/)" if `which rustc`.empty?

require 'mkmf'
create_makefile 'prubybility-rust'
File.write('Makefile', "all:\n\tcargo rustc --release\nclean:\n\trm -rf ./lib/prubybility/libprubybility.so\ninstall: mv -f ./target/release/libprubybility.so ./lib/prubybility;")
