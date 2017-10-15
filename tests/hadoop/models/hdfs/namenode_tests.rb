require File.expand_path '../../../hdfs_model_helper', __dir__

# test class for Namnode Model
Shindo.tests('Fog::Hadoop::HDFS::Namenode | namenode model', ['hadoop', 'HDFS']) do

  @service = Fog::Hadoop::HDFS.new(credentials)
  @namenode = namenode(@service)

  tests('Model Attributes') do
    attributes = [
        :host,
        :port,
        :role,
        :state
    ]
    attributes.each do |attribute|
      @namenode.respond_to?(attribute)
    end
  end

  tests('Methods') do
    tests('#parse_method') do
      hash = {
        'host'  => 'machine-1.mycluster',
        'port'  => 8020,
        'role'  => 'NameNode',
        'state' => 'active'
      }
      puts Fog::Hadoop::HDFS::Namenode.parse(ApiStub::Models::HDFS::Namenode.get_namenode).inspect
      returns(true) { hash == Fog::Hadoop::HDFS::Namenode.parse(ApiStub::Models::HDFS::Namenode.get_namenode) }
    end
  end
end