require 'fog/hadoop/models/model'

module Fog
  module Yarn
    class hadoop
      class Node < Fog::Hadoop::Model
        identity :id

        attribute :rack
        attribute :state
        attribute :node_host_name
        attribute :node_http_address
        attribute :health_status
        attribute :last_health_update
        attribute :health_report
        attribute :num_containers
        attribute :used_memory_mb
        attribute :avail_memory_mb
        attribute :used_virtual_cores
        attribute :available_virtual_cores
      end
    end
  end
end
