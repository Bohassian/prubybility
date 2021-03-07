# frozen_string_literal: true

require 'rake/testtask'

task :rust_build do
  `cargo rustc --release`
  `mv -f ./target/release/libprubybility.so ./lib/prubybility`
end

task :build => :rust_build
task :test => :rust_build

task :rust_clean do
  `cargo clean`
  `rm -f ./lib/prubybility/libprubybility.so`
end

task :clean => :rust_clean

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

desc 'Run tests'
task default: :test
