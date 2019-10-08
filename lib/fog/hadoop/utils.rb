require 'json'

module Fog
  module Hadoop
    module Utils
      autoload :Request, File.expand_path('../utils/request', __FILE__)
    end
  end
end