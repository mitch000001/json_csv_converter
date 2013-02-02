require 'bundler'
require 'rspec/core/rake_task'

Bundler::GemHelper.install_tasks
RSpec::Core::RakeTask.new('spec')

task :default => :spec

desc "Create spec for class or module"
task :create_spec, [:class_name] do |t,args|
  class_name = args.class_name
  File.open("spec/#{class_name}_spec","w") do |file|
    file.puts "require 'spec_helper'"
    file.puts
    file.puts %(describe #{class_name} do)
    file.puts "  # Your test here"
    file.puts "end"
  end
end