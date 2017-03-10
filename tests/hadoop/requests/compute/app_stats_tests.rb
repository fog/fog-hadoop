Shindo.tests('Fog::Compute[:hadoop] | app stats request', ['hadoop', 'compute']) do

    @app_stats_format = {
        "state" => String,
        "type"  => String,
        "count" => Integer
    }

  tests('success') do
    tests('#get_app_stats') do
      stats = hadoop_compute_service.get_app_stats
      test 'returns a Hash' do
        stats.body.is_a? Array
      end
      if Fog.mock?
        tests('Info').formats(@app_stats_format, false) do
          stats.body.first
        end
        tests('Info').formats(@app_stats_format, false) do
          stats.body.last
        end
      else
        returns(200) { stats.status }
        returns(true) { stats.body.is_a? Hash }
      end
    end

    tests('#get_app_stats_detail') do
      stats_detail = hadoop_compute_service.get_app_stats_detail(:states => "accepted")
      test 'returns a Hash' do
        stats_detail.body.is_a? Array
      end
      if Fog.mock?
        tests('Info').formats(@app_stats_format, false) do
          stats_detail.body.first
        end
      else
        returns(200) { stats_detail.status }
        returns(true) { stats_detail.body.is_a? Hash }
      end
    end
  end
end

