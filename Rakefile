require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "lockfile"
    gem.summary = %Q{A simple Lock File class written in Ruby.}
    gem.description = %Q{A simple Lock File class written in Ruby.}
    gem.email = "josh@josh-nesbitt.net"
    gem.homepage = "http://github.com/joshnesbitt/lockfile"
    gem.authors = ["Josh Nesbitt"]
    gem.files = ["lib/**/*.rb"]
    gem.require_paths = ["lib"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "test #{version}"
  rdoc.rdoc_files.include('readme.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
