require 'fog/core'
require 'fog/json'

module Fog
  module Hadoop
    autoload :HDFS, File.expand_path('../hadoop/hdfs', __FILE__)
    autoload :YARN, File.expand_path('../hadoop/yarn', __FILE__)
    autoload :Utils, File.expand_path('../hadoop/utils', __FILE__)

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