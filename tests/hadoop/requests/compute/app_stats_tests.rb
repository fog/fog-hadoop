Shindo.tests('Fog::Compute[:hadoop] | app stats request', ['hadoop', 'compute']) do

    @app_stats_format = {
        "state" => String,
        "type"  => String,
        "count" => Integer
    }
    @app_stats_mock = [
        {
            "state" => "accepted",
            "type"  => "mapreduce",
            "count" => 4
        },
        {
            "state" => "running",
            "type"  =>  "mapreduce",
            "count" => 1
        },
        {
            "state" => "finished",
            "type"  => "mapreduce",
            "count" => 7
        }
    ]
    @app_stats_detail_mock = [
        {
            "state" => "accepted",
            "type"  => "mapreduce",
            "count" => 4
        }
    ]
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
        tests('Mock is OK') do
          returns(@app_stats_mock) {stats.body}
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
        tests('Mock is OK') do
          returns(@app_stats_detail_mock) {stats_detail.body}
        end
      else
        returns(200) { stats_detail.status }
        returns(true) { stats_detail.body.is_a? Hash }
      end
    end
  end
end

