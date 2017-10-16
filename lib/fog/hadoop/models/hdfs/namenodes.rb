module Fog
  module Hadoop
    class HDFS
      class Namenodes < Fog::Collection
        model Fog::Hadoop::HDFS::Namenode

        def all
          namenodes = []
          service.list_namenodes.each do |namenode|
            namenodes << Fog::Hadoop::HDFS::Namenode.parse(namenode)
          end
          load(namenodes)
        end
      end
    end
  end
end
