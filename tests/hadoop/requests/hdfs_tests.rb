Shindo.tests('Fog::Hadoop::HDFS[:hadoop] | hadoop hdfs module', ['hadoop','hdfs']) do
  connection_params = {
      hadoop_hdfs_api_url:     "http://<namenode>:50070/"
  }
  tests('validate Model') do
    test 'returns a String' do
      returns(Fog::Hadoop::HDFS::Mock) { Fog::Hadoop::HDFS.new(connection_params).class }
    end
    
    test 'returns error bad uri' do
      raises(URI::InvalidURIError) { Fog::Hadoop::HDFS::Real.new(connection_params).class }
    end
  end
end