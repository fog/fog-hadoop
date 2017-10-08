Shindo.tests('Fog::Hadoop::YARN[:hadoop] | metrics request', ['hadoop', 'yarn']) do

    @metrics_format = {
        "appsSubmitted"          => Integer,
        "appsCompleted"          => Integer,
        "appsPending"            => Integer,
        "appsRunning"            => Integer,
        "appsFailed"             => Integer,
        "appsKilled"             => Integer,
        "reservedMB"             => Integer,
        "availableMB"            => Integer,
        "allocatedMB"            => Integer,
        "reservedVirtualCores"   => Integer,
        "availableVirtualCores"  => Integer,
        "allocatedVirtualCores"  => Integer,
        "containersAllocated"    => Integer,
        "containersReserved"     => Integer,
        "containersPending"      => Integer,
        "totalMB"                => Integer,
        "totalVirtualCores"      => Integer,
        "totalNodes"             => Integer,
        "lostNodes"              => Integer,
        "unhealthyNodes"         => Integer,
        "decommissionedNodes"    => Integer,
        "rebootedNodes"          => Integer,
        "activeNodes"            => Integer
    }

  tests('success') do
    tests('#get_metrics') do
      metrics = hadoop_yarn_service.get_metrics
      test 'returns a Hash' do
        metrics.body.is_a? Hash
      end
      if Fog.mock?
        tests('Metrics').formats(@metrics_format, false) do
          metrics.body
        end
      else
        returns(200) { metrics.status }
        returns(true) { metrics.body.is_a? Hash }
      end
    end
  end
end
