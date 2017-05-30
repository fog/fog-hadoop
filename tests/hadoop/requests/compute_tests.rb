Shindo.tests('Fog::Compute::Hadoop[:hadoop] | compute hadoop module', ['compute', 'hadoop']) do
  connection_params = {
      hadoop_compute_api_url:     "http://<namenode>:50070/"
  }
  tests('validate Model') do
    test 'returns a String' do
      returns(Fog::Compute::Hadoop::Mock) { Fog::Compute::Hadoop.new(connection_params).class }
    end

    test 'returns error bad uri' do
      raises(URI::InvalidURIError) { Fog::Compute::Hadoop::Real.new(connection_params).class }
    end
  end
end