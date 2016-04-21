Bundler::GemHelper.install_tasks

require 'opal/rspec/rake_task'
require 'rspec/core/rake_task'

desc 'Run integration specs'
Opal::RSpec::RakeTask.new(:'spec:integration') do |server, task|
  task.pattern = 'spec/integration/**/*_spec.rb'
  task.default_path = 'spec/integration'
  server.sprockets.cache = ::Sprockets::Cache::FileStore.new(File.join('tmp', 'cache', 'opal_specs'))
end


desc 'Unit tests for MRI focused components'
RSpec::Core::RakeTask.new :'spec:unit' do |t|
  t.pattern = 'spec/unit/**/*_spec.rb'
end

task :default => %w(spec:unit spec:integration)
