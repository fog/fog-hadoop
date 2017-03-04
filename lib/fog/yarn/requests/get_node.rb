module Fog
  module Yarn
    class Hadoop
      class Real
        def get_node(node_ref)
          request(
            :expects => [200, 203],
            :method  => 'GET',
            :path    => "nodes/#{node_ref}"
          )
        end
      end

      class Mock
        def get_node(flavor_ref)
          response = Excon::Response.new
          node = {
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
          }
          if node
            response.status = 200
            response.body = {
              'node' => node
            }
            response
          else
            raise Fog::Yarn::Hadoop::NotFound
          end
        end
      end
    end
  end
end
