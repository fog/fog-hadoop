module Fog
  module Yarn
    class Hadoop < Fog::Service
      requires :hadoop_yarn_url

      ## MODELS
      model_path 'fog/yarn/models'
      #
      model      :node
      collection :nodes

      ## REQUESTS
      request_path 'fog/yarn/requests'
      #

      # Node CRUD
      request :list_nodes
      request :get_node

      def self.reset
        @data = nil
      end

      include Fog::Hadoop::Core

      def initialize(options = {})
        management_url = URI.parse(optionas[:yarn_url])
        management_url.port = 8088
        management_url.path = '/wd/v1/cluster'
        @yarn_management_url = management_url.to_s
      end
    end
  end
end
