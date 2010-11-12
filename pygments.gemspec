# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pygments/version"

Gem::Specification.new do |s|
  s.name        = "pygments"
  s.version     = Pygments::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Write your name"]
  s.email       = ["TODO: Write your email address"]
  s.homepage    = "http://rubygems.org/gems/pygments"
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "pygments"

  s.add_development_dependency('rspec', '~> 2.1')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
