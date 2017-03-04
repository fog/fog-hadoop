require 'fog/hadoop/models/collection'
require 'fog/yarn/models/node'

module Fog
  module Yarn
    class Hadoop
      class Nodes < Fog::Hadoop::Collection
        model Fog::Yarn::Hadoop::Node

        def all(options = {})
          data = service.list_nodes(options).body['nodes']
          load_response(data, 'nodes')
        end

        def summary(options = {})
          data = service.list_nodes(options).body['nodes']
          load_response(data, 'nodes')
        end

        def get(node_id)
          data = service.get_node(node_id).body['node']
          new(data)
        rescue Fog::Yarn::Hadoop::NotFound
          nil
        end
      end
    end
  end
end
