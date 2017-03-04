# Use so you can run in mock mode from the command line
#
# FOG_MOCK=true fog

if ENV["FOG_MOCK"] == "true"
  Fog.mock!
end

# if in mocked mode, fill in some fake credentials for us
if Fog.mock?
  Fog.credentials = {
    :hadoop_service_name  => 'hadoop_service',
    :hadoop_service_type  => 'hadoop_service_name',
    :hadoop_endpoint_type   => 'http://localhost:8088/',
  }.merge(Fog.credentials)
end
