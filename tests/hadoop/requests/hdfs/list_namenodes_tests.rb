Shindo.tests('Fog::Hadoop::HDFS[:hadoop] | list namenodes request', ['hadoop', 'HDFS']) do

  @list_namenodes_format = [{
    "name"=>"Hadoop:service=NameNode,name=NameNodeStatus",
    "modelerType"=>"org.apache.hadoop.hdfs.server.namenode.NameNode",
    "State"=>"active",
    "SecurityEnabled"=>false,
    "NNRole"=>"NameNode",
    "HostAndPort"=>"machine-1.mycluster:8020",
    "LastHATransitionTime"=>0
  }]

  tests('success') do
    tests('#list_namenodes') do
      list_namenodes = hadoop_hdfs_service.list_namenodes
      test 'returns a Hash' do
        list_namenodes.body.is_a? Array
      end
      if Fog.mock?
        tests('Metrics').formats(@list_namenodes_format, false) do
          list_namenodes.body
        end
      else
        returns(200) { list_namenodes.status }
        returns(true) { list_namenodes.body.is_a? Array }
      end
    end
  end
end
