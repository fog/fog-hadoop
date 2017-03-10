Shindo.tests('Fog::Compute[:hadoop] | info request', ['hadoop', 'compute']) do

    @info_format = {
        "id"                            => Integer,
        "startedOn"                     => Integer,
        "state"                         => String,
        "resourceManagerVersion"        => String,
        "resourceManagerBuildVersion"   => String,
        "resourceManagerVersionBuiltOn" => String,
        "hadoopVersion"                 => String,
        "hadoopBuildVersion"            => String,
        "hadoopVersionBuiltOn"          => String
    }

  tests('success') do
    tests('#get_info') do
      info = hadoop_compute_service.get_info
      test 'returns a Hash' do
        info.body.is_a? Hash
      end
      if Fog.mock?
        tests('Info').formats(@info_format, false) do
          info.body
        end
      else
        returns(200) { info.status }
        returns(true) { info.body.is_a? Hash }
      end
    end
  end
end

