require 'fog/core'
require 'fog/json'
require 'fog/hadoop/utils/request'

module Fog
  module Hadoop
    autoload :YARN, File.expand_path('../hadoop/yarn', __FILE__)
    autoload :HDFS, File.expand_path('../hadoop/hdfs', __FILE__)
    extend Fog::Provider

    service(:yarn, 'YARN')
    service(:hdfs, 'HDFS')

    def self.yarn_endpoint
      "/ws/v1/cluster"
    end

    def self.hdfs_endpoint
      "/jmx"
    end
  end
end