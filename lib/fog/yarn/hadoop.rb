module Fog
  module Yarn
    class Hadoop < Fog::Service
      SUPPORTED_VERSIONS = "v1"


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

      class Mock
        def initialize(options = {})
          management_url = URI.parse(options[:yarn_url])
          management_url.port = 8088
          management_url.path = '/ws/v1/cluster'
          @yarn_management_url = management_url.to_s
        end
      end

      class Real
        include Fog::OpenStack::Core

        def self.not_found_class
          Fog::Yarn::Hadoop::NotFound
        end

        def initialize(options = {})
          @hadoop_service_type              = options[:hadoop_service_type] || ['yarn']
          @hadoop_service_name              = options[:hadoop_service_name]
          @hadoop_endpoint_type             = options[:hadoop_endpoint_type] || 'adminURL'

          @connection_options               = options[:connection_options] || {}

          set_api_path

          @persistent = options[:persistent] || false
          @connection = Fog::Core::Connection.new("#{@scheme}://#{@host}:#{@port}", @persistent, @connection_options)
        end

        def set_api_path
          @path = "/" + "ws/" + SUPPORTED_VERSIONS + "/cluster"
        end
      end
    end
  end
end
