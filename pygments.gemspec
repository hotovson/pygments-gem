# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pygments/version"

Gem::Specification.new do |s|
  s.name        = "pygments"
  s.version     = Pygments::VERSION
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.8.7'
  s.requirements << 'python 2.x'
  s.authors     = ["Nathan Youngman"]
  s.email       = ["git@nathany.com"]
  s.homepage    = "http://pygments.heroku.com/"
  s.summary     = %q{Pygments syntax highlighter bundled as a gem with a Ruby wrapper.}
  s.description = %q{Pygments syntax highlighter bundled as a gem with a Ruby wrapper. It requires Python 2.x.}
  
  s.add_development_dependency('rspec', '~> 2.1')
  s.add_development_dependency('autotest', '~> 4.4')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
