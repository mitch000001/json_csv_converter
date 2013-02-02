# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "json_csv_converter/version"

Gem::Specification.new do |s|
  s.name        = "json_csv_converter"
  s.version     = JSONCSVConverter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Michael Wagner"]
  s.email       = ["mitch.wagna@gmail.com"]
  s.homepage    = "https://github.com/mitch000001/json_csv_converter"
  s.summary     = %q{A converter between JSON and CSV files}
  s.description = %q{This gem provides a converter between an existing JSON file and an existing CSV file. The Mapping is provided via YAML.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency 'json'
  s.add_development_dependency 'rspec'
end