# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "general-hawk/version"

Gem::Specification.new do |s|
  s.name        = "general-hawk"
  s.version     = General::Hawk::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Josh Owens"]
  s.email       = ["joshua.owens@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A Sinatra app to monitor multiple CIJoe Projects}
  s.description = %q{A Sinatra app to monitor multiple CIJoe Projects}

  s.rubyforge_project = "general-hawk"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
