module Fog
  module Hadoop
    class Script < Fog::Service

      class Real
        include Fog::Hadoop::Utils::Request

        def initialize(options = {})


          @connection = Fog::Core::Connection.new(@service_api_url)
        end
      end

      class Mock
        def initialize(options={})
          @service_api_url        = options[:service_api_url]
        end
      end
    end
  end
end