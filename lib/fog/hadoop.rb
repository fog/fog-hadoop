require 'fog/core'
require 'fog/json'
require 'fog/hadoop/utils/request'

module Fog
  module Compute
    autoload :Hadoop, File.expand_path('../hadoop/compute', __FILE__)
  end

  module Storage
    autoload :Hadoop, File.expand_path('../hadoop/storage', __FILE__)
  end

  module Hadoop
    extend Fog::Provider

    service(:compute, 'Compute')
    service(:storage, 'Storage')

    def self.yarn_endpoint
      "/ws/v1/cluster"
    end

    def self.hdfs_endpoint
      "/jmx"
    end
  end
end