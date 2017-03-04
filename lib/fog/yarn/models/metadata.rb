require 'fog/hadoop/models/collection'
require 'fog/hadoop/models/meta_parent'
require 'fog/yarn/hadoop/models/metadatum'
require 'fog/yarn/hadoop/models/image'
require 'fog/yarn/hadoop/models/server'

module Fog
  module Yarn
    class Hadoop
      class Metadata < Fog::Hadoop::Collection
        model Fog::Yarn::Hadoop::Metadatum

        include Fog::Yarn::Hadoop::MetaParent

        def all
          requires :parent
          metadata = service.list_metadata(collection_name, @parent.id).body['metadata']
          metas = []
          metadata.each_pair { |k, v| metas << {"key" => k, "value" => v} } unless metadata.nil?
          # TODO: convert to load_response?
          load(metas)
        end

        def get(key)
          requires :parent
          data = service.get_metadata(collection_name, @parent.id, key).body["meta"]
          metas = []
          data.each_pair { |k, v| metas << {"key" => k, "value" => v} }
          new(metas[0])
        rescue Fog::Compute::OpenStack::NotFound
          nil
        end

        def update(data = nil)
          requires :parent
          service.update_metadata(collection_name, @parent.id, to_hash(data))
        end

        def set(data = nil)
          requires :parent
          service.set_metadata(collection_name, @parent.id, to_hash(data))
        end

        def new(attributes = {})
          requires :parent
          super({:parent => @parent}.merge!(attributes))
        end

        def to_hash(data = nil)
          if data.nil?
            data = {}
            each do |meta|
              if meta.kind_of?(Fog::Yarn::hadoop::Metadatum)
                data.store(meta.key, meta.value)
              else
                data.store(meta["key"], meta["value"])
              end
            end
          end
          data
        end
      end
    end
  end
end
