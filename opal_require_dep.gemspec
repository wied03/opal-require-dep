# -*- encoding: utf-8 -*-
require File.expand_path('../lib/opal/require_dep/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'opal_require_dep'
  s.version = Opal::RequireDep::VERSION
  s.author = 'Brady Wied'
  s.email = 'brady@bswtechconsulting.com'
  s.summary = 'require_dependency shim for Opal'
  s.description = 'Adds an Opal synonym for require_dependency (to require) to play nice with Rails autoload in isomorphic code'

  s.files = Dir.glob('lib/**/*.rb')

  s.add_runtime_dependency 'opal', '>= 0.9.2'

  s.require_paths = ['lib']
end
