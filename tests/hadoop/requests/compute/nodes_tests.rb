
Shindo.tests('Fog::Compute[:hadoop] | nodes request', ['hadoop', 'compute']) do

    @list_nodes_format = [
        {
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
            "availMemoryMB"         => 8192,
            "usedVirtualCores"      => 0,
            "availableVirtualCores" => 8
        },
        {
            "rack"                  => "\/default-rack",
            "state"                 => "NEW",
            "id"                    => "h1:1234",
            "nodeHostName"          => "h1",
            "nodeHTTPAddress"       => "h1:2",
            "healthStatus"          => "Healthy",
            "lastHealthUpdate"      => 1324056895092,
            "healthReport"          => "Healthy",
            "numContainers"         => 0,
            "usedMemoryMB"          => 0,
            "availMemoryMB"         => 8192,
            "usedVirtualCores"      => 0,
            "availableVirtualCores" => 8
        }
    ]

    @node_format = {
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


  tests('success') do
    tests('#list_nodes') do
      list_nodes = hadoop_compute_service.list_nodes
      test 'returns a Hash' do
        list_nodes.body.is_a? Array
      end
      if Fog.mock?
        tests('List_Nodes').formats(@list_nodes_format[0], false) do
          list_nodes.body[0]
        end
        tests('List_Nodes').formats(@list_nodes_format[1], false) do
          list_nodes.body[1]
        end
      else
        returns(200) { list_nodes.status }
        returns(true) { list_nodes.body.is_a? Array }
      end
    end

    tests('#get_nodes') do
      get_node = hadoop_compute_service.get_node("h2:1235")
      test 'returns a Hash' do
        get_node.body.is_a? Hash
      end
      if Fog.mock?
        tests('Nodes').formats(@node_format, false) do
          get_node.body
        end
      else
        returns(200) { get_node.status }
        returns(true) { get_node.body.is_a? Hash }
      end
    end
  end
end