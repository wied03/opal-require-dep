# opal-require-dep

[![Build Status](http://img.shields.io/travis/wied03/opal-require-dep/master.svg?style=flat)](http://travis-ci.org/wied03/opal-require-dep)

## Usage

Add `opal-require-dep` to your Gemfile:

```ruby
gem 'opal-require-dep'
```

### Use in your application

If you use Rails or `Bundler.require`, you don't need to do anything but add to your Gemfile.

If you don't use either of those, then do this on the MRI side:

```ruby
require 'opal-require-dep'
```

If you use [opal-webpack](https://github.com/cj/opal-webpack), then, until [this issue](https://github.com/cj/opal-webpack/issues/31) is resolved, you'll need to do something like this in your webpack config:
```js
const env = process.env
const path = require('path')

const requireDepLoadPath = path.join(require('child_process').execSync("ruby -e \"puts Gem::Specification.find_by_name('opal-require-dep').gem_dir\"").toString().trim(), 'lib')
env.OPAL_COMPILER_LOAD_PATH = requireDepLoadPath
env.OPAL_COMPILER_REQUIRES = path.join(requireDepLoadPath, 'opal-require-dep')
```

Then you can use `require_dependency` in your Opal files that you share with rails and it will function as an alias of
`require` in Opal

## Contributing

Install required gems at required versions:

    $ bundle install

A simple rake task should run the example specs in `spec/`:

    $ bundle exec rake

## License

Authors: Brady Wied

Copyright (c) 2016, BSW Technology Consulting LLC
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

