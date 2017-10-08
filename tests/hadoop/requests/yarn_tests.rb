Shindo.tests('Fog::Hadoop::YARN[:hadoop] | hadoop yarn module', ['hadoop', 'yarn']) do
  connection_params = {
      hadoop_yarn_api_url:     "http://<namenode>:50070/"
  }
  tests('validate Model') do
    test 'returns a String' do
      returns(Fog::Hadoop::YARN::Mock) { Fog::Hadoop::YARN.new(connection_params).class }
    end

    test 'returns error bad uri' do
      raises(URI::InvalidURIError) { Fog::Hadoop::YARN::Real.new(connection_params).class }
    end
  end
end