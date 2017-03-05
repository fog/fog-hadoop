require 'fog/core'
require 'fog/json'
require 'fog/hadoop/utils/request'

module Fog
  module Compute
    autoload :Hadoop, File.expand_path('../hadoop/compute', __FILE__)
  end

  module Hadoop
    extend Fog::Provider


    # Miscs
    ## Startup Script
    #autoload :Script,      File.expand_path('../sakuracloud/script', __FILE__)

    service(:compute, 'Compute')



    def self.build_yarn_endpoint
      "/ws/v1/cluster/"
    end
  end
end