require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "simple_lockfile"
    gem.summary = %Q{A simple Lock File implementation.}
    gem.description = %Q{A simple Lock File implementation.}
    gem.email = "josh@josh-nesbitt.net"
    gem.homepage = "http://blog.josh-nesbitt.net/2009/09/08/implementing-a-simple-lockfile-system-in-ruby/"
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
