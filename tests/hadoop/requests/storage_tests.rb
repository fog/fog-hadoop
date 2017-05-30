Shindo.tests('Fog::Storage::Hadoop[:hadoop] | storage hadoop module', ['storage', 'hadoop']) do
  connection_params = {
      hadoop_storage_api_url:     "http://<namenode>:50070/"
  }
  tests('validate Model') do
    test 'returns a String' do
      returns(Fog::Storage::Hadoop::Mock) { Fog::Storage::Hadoop.new(connection_params).class }
    end
    
    test 'returns error bad uri' do
      raises(URI::InvalidURIError) { Fog::Storage::Hadoop::Real.new(connection_params).class }
    end
  end
end