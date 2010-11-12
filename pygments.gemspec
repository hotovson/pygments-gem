# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pygments/version"

Gem::Specification.new do |s|
  s.name        = "pygments"
  s.version     = Pygments::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nathan Youngman"]
  s.email       = ["git@nathany.com"]
  s.homepage    = "https://github.com/nathany/pygments-gem"
  s.summary     = %q{Pygments bundled as a gem with a Ruby wrapper.}
  s.description = %q{Pygments bundled as a gem with a Ruby wrapper.}

  s.rubyforge_project = "pygments"

  s.add_development_dependency('rspec', '~> 2.1')
  s.add_development_dependency('autotest', '~> 4.4')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
