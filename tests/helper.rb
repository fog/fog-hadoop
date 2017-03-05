## Initialize credentials
ENV['FOG_RC'] = ENV['FOG_RC'] || File.expand_path('../.fog', __FILE__)

## From fog-core
require 'fog/test_helpers'
require 'fog/hadoop'

if ENV['CI']
  Fog.credentials[:service_api_url]        = 'http://localhost:8088'
end

def hadoop_compute_service
  Fog::Compute[:hadoop]
end

