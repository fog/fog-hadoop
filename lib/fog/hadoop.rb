require 'fog/hadoop/version'
require 'fog/core'
require 'fog/json'

require 'fog/hadoop/core'
require 'fog/hadoop/errors'

module Fog
  module Yarn
    autoload :Hadoop, File.expand_path('../yarn/hadoop', __FILE__)
  end

  module Hadoop
    extend Fog::Provider

    service(:yarn, 'Yarn')
  end
end
