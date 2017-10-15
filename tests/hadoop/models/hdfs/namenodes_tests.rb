require File.expand_path '../../../hdfs_model_helper', __dir__

# test class for Namenodes Collection
Shindo.tests('Fog::Hadoop::HDFS::Namenodes | namenodes model collection', ['hadoop', 'HDFS']) do


  @service = Fog::Hadoop::HDFS.new(credentials)
  @namenodes = Fog::Hadoop::HDFS::Namenodes.new(service: @service)

  tests('Respond Collection Methods') do
    methods = [
        :all
    ]
    methods.each do |method|
      @namenodes.respond_to?(method)
    end
  end

  tests('Methods Collection') do
    response = [ApiStub::Models::HDFS::Namenode.get_namenode]
    @service.stub :list_namenodes, response do
      returns(Fog::Hadoop::HDFS::Namenodes) {@namenodes.all.class}
      returns(true) {@namenodes.all.size >= 1}
      @namenodes.all.each do |s|
        returns(Fog::Hadoop::HDFS::Namenode) {s.class}
      end
    end
  end
end