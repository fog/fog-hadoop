module ApiStub
  module Models
    module HDFS
      # Mock class for Server Model
      class Namenode
        def self.get_namenode
            {
                
                    "name"                 => "Hadoop:service=NameNode,name=NameNodeStatus",
                    "modelerType"          => "org.apache.hadoop.hdfs.server.namenode.NameNode",
                    "State"                => "active",
                    "SecurityEnabled"      => false,
                    "NNRole"               => "NameNode",
                    "HostAndPort"          => "machine-1.mycluster:8020",
                    "LastHATransitionTime" => 0

            }
        end
      end
    end
  end
end