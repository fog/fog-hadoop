module Fog
  module Yarn
    class Hadoop
      class Real
        def list_nodes(options = {})
          request(
            :expects => [200, 203],
            :method  => 'GET',
            :path    => 'nodes',
            :query   => options
          )
        end
      end

      class Mock
        def list_flavors(_options = {})
          response = Excon::Response.new

          nodes = [
            'node' => {
              "rack"                  => "\/default-rack",
              "state"                 => "NEW",
              "id"                    => "h2:1235",
              "nodeHostName"          => "h2",
              "nodeHTTPAddress"       => "h2:2",
              "healthStatus"          => "Healthy",
              "lastHealthUpdate"      => 1324056895432,
              "healthReport"          => "Healthy",
              "numContainers"         => 0,
              "usedMemoryMB"          => 0,
              "availMemoryMB"         => 5120,
              "usedVirtualCores"      => 0,
              "availableVirtualCores" => 8
            },
            'node' => {
              "rack"                  => "\/default-rack",
              "state"                 => "RUNNING",
              "id"                    => "h2:1236",
              "nodeHostName"          => "h3",
              "nodeHTTPAddress"       => "h3:2",
              "healthStatus"          => "Healthy",
              "lastHealthUpdate"      => 1324056895432,
              "healthReport"          => "Healthy",
              "numContainers"         => 0,
              "usedMemoryMB"          => 0,
              "availMemoryMB"         => 8120,
              "usedVirtualCores"      => 0,
              "availableVirtualCores" => 16
            }
          ]
            
          response.status = 200
          response.body = {
            'nodes' => nodes

          }
          response
        end
      end
    end
  end
end
