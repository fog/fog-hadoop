# Copyright (c) Microsoft Open Technologies, Inc.  All rights reserved.
#
# The MIT License (MIT)
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fog/hadoop/version'

Gem::Specification.new do |spec|
  spec.name          = "fog-hadoop"
  spec.version       = Fog::Hadoop::VERSION
  spec.authors       = ["Alberto Gutierrez"]
  spec.email         = ["aljesusg@gmail.com"]
  spec.summary       = %q{Module for the 'fog' gem to support Hadoop services.}
  spec.description   = %q{This library can be used as a module for `fog` or as standalone provider
                        to use the Hadoop services in applications..}
  spec.homepage      = "http://github.com/aljesusg/fog-hadoop"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'fog-core'
  spec.add_dependency 'fog-json'

  spec.add_development_dependency "bundler", "~> 1.5"
  ## List your development dependencies here. Development dependencies are
  ## those that are only needed during development
  spec.add_development_dependency('minitest')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rbvmomi')
  spec.add_development_dependency('yard')
  spec.add_development_dependency('thor')
  spec.add_development_dependency('rbovirt', '0.0.24')
  spec.add_development_dependency('shindo', '~> 0.3.4')
  spec.add_development_dependency('fission')
  spec.add_development_dependency('pry')
  spec.add_development_dependency('rubocop') if RUBY_VERSION > "1.9"
end
