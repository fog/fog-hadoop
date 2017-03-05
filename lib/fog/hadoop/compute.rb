module Fog
  module Compute
    class Hadoop < Fog::Service

      recognizes   :compute_api_url


      request_path 'fog/hadoop/requests/compute'
      request      :get_metrics

      class Real
        include Fog::Hadoop::Utils::Request

        def initialize(options = {})

          @hadoop_api_url = options[:hadoop_api_url] || 'https://localhost:8088/ws/v1/cluster'

          @connection = Fog::Core::Connection.new(@hadoop_api_url)
        end
      end

      class Mock
        def initialize(options = {})
        end
      end
    end #SakuraCloud
  end #Compute
end