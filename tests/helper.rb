## Initialize credentials
ENV['FOG_RC'] = ENV['FOG_RC'] || File.expand_path('../.fog', __FILE__)

## From fog-core
require 'minitest/autorun'
require "minitest/spec"
require 'fog/test_helpers'
require 'fog/hadoop'
require "simplecov"
require 'coveralls'

SimpleCov.start
Coveralls.wear!
if ENV['FOG_MOCK'] == 'true'
  Fog.mock!
end

if Fog.mock?
  Fog.credentials = {
    hadoop_yarn_api_url: 'http://localhost:8088',
    hadoop_hdfs_api_url: 'http://localhost:50070'
  }.merge(Fog.credentials)
end

def hadoop_yarn_service
  Fog::Hadoop[:yarn]
end

def hadoop_hdfs_service
  Fog::Hadoop[:hdfs]
end

