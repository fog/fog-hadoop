
Shindo.tests('Fog::Compute[:hadoop] | nodes request', %w(hadoop compute)) do

  @node_format = {
        'rack'                  => String,
        'state'                 => String,
        'id'                    => String,
        'nodeHostName'          => String,
        'nodeHTTPAddress'       => String,
        'healthStatus'          => String,
        'lastHealthUpdate'      => Integer,
        'healthReport'          => String,
        'numContainers'         => Integer,
        'usedMemoryMB'          => Integer,
        'availMemoryMB'         => Integer,
        'usedVirtualCores'      => Integer,
        'availableVirtualCores' => Integer
  }

  tests('#list_nodes') do
    list_nodes = hadoop_compute_service.list_nodes
    test 'returns a Hash' do
      list_nodes.body.is_a? Array
    end
    if Fog.mock?
      tests('List_Nodes').formats(@node_format, false) do
        list_nodes.body.first
      end
      tests('List_Nodes').formats(@node_format, false) do
        list_nodes.body.last
      end
    else
      returns(200) { list_nodes.status }
      returns(true) { list_nodes.body.is_a? Array }
    end
  end

  tests('#get_nodes') do
    get_node = hadoop_compute_service.get_node('sample')
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
