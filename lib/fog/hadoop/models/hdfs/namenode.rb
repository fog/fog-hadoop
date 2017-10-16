module Fog
  module Hadoop
    class HDFS
      class Namenode < Fog::Model
        attribute :host
        attribute :port
        attribute :role
        attribute :state

        def initialize(attributes)
          self.host =  attributes.delete('host')
          self.port = attributes.delete('port')
          self.role = attributes.delete('role')
          self.state = attributes.delete('state')
          super
        end

        def self.parse(namenode)
          hash = {}
          host_and_port = namenode['HostAndPort']
          uri = URI(host_and_port.start_with?('http') ? host_and_port : "http://#{host_and_port}")

          hash['host'] = uri.host
          hash['port'] = uri.port
          hash['role'] = namenode['NNRole']
          hash['state'] = namenode['State']
          hash
        end
      end
    end
  end
end
