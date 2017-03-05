module Fog
  module Compute
    class Hadoop < Fog::Service
      requires     :hadoop_compute_api_url

      recognizes   :compute_api_url


      request_path 'fog/hadoop/requests/compute'
      request      :get_metrics

      class Real
        include Fog::Hadoop::Utils::Request

        def initialize(options = {})

          @compute_api_url = options[:hadoop_compute_api_url] || 'https://localhost:8088/'

          @connection = Fog::Core::Connection.new(@compute_api_url)
        end
      end

      class Mock
        def initialize(options = {})
        end
      end
    end #SakuraCloud
  end #Compute
end