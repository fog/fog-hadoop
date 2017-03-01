# require 'coveralls'
# Coveralls.wear!

require 'minitest/autorun'
require "minitest/spec"
require 'fog/core'
require 'fog/test_helpers/types_helper.rb'
require 'fog/test_helpers/minitest/assertions'
require 'fog/test_helpers/minitest/expectations'

require File.expand_path('../../lib/fog/hadoop', __FILE__)
