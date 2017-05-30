Shindo.tests('Fog::Hadoop[:hadoop] | hadoop module', ['hadoop']) do
  tests('validate VERSION') do
    test 'returns a String' do
      Fog::Hadoop::VERSION.is_a? String
    end
  end

  tests('validate') do
    tests('validate HDFS endpoint') do
      test 'returns a String' do
        Fog::Hadoop.hdfs_endpoint.is_a? String
      end
      test 'returns a specific String' do
        returns("/jmx") { Fog::Hadoop.hdfs_endpoint }
      end
    end

    tests('validate yarn endpoint') do
      test 'returns a String' do
        Fog::Hadoop.yarn_endpoint.is_a? String
      end
      test 'returns a specific String' do
        returns("/ws/v1/cluster") { Fog::Hadoop.yarn_endpoint }
      end
    end
  end
end