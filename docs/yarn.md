#Yarn use samples

```ruby
@connection_params = {
  hadoop_yarn_api_url:     "http://<resource_manager_host>:8088/"
}
```

## Get Metrics

```
yarn = Fog::Hadoop::YARN.new(@connection_params)
yarn.get_metrics
```

```
# => {"appsSubmit`ted"=>0,
#     "appsCompleted"=>0, 
#     "appsPending"=>0,
#     "appsRunning"=>0,
#     "appsFailed"=>0,
#     "appsKilled"=>0,
#     "reservedMB"=>0,
#     "availableMB"=>16384,
#     "allocatedMB"=>0,
#     "containersAllocated"=>0,
#     "containersReserved"=>0,
#     "containersPending"=>0,
#     "totalMB"=>16384,
#     "totalNodes"=>2,
#     "lostNodes"=>0,
#     "unhealthyNodes"=>0,
#     "decommissionedNodes"=>0,
#     "rebootedNodes"=>0,
#     "activeNodes"=>2}
```


## Get Info

```
yarn.get_info
```

```
# => {"id"=>1489170864142,
#     "startedOn"=>1489170864142,
#     "state"=>"STARTED",
#     "haState"=>"ACTIVE",
#     "resourceManagerVersion"=>"2.4.1",
#     "resourceMan`agerBuildVersion"=>"2.4.1 from 1604318 by jenkins source checksum f74113c8e511baadac8fbc14827d8b85",
#     "resourceManagerVersionBuiltOn"=>"2014-06-21T06:01Z",
#     "hadoopVersion"=>"2.4.1",
#     "hadoopBuildVersion"=>"2.4.1 from 1604318 by jenkins source checksum bb7ac0a3c73dc131f4844b873c74b630",
#     "hadoopVersionBuiltOn"=>"2014-06-21T05:43Z"}
```

## Get Stats

```
yarn.get_app_stats
```

```
=> [{"state"=>"SUBMITTED",
#  "type"=>"*",
#  "count"=>0},
#  {"state"=>"NEW",
#  "type"=>"*",
#  "count"=>0},
#  {"state"=>"KILLED",
#  "type"=>"*",
#  "count"=>0},
#  {"state"=>"NEW_SAVING",
#  "type"=>"*",
#  "count"=>0},
#  {"state"=>"RUNNING",
#  "type"=>"*",
#  "count"=>0},
#  {"state"=>"FAILED",
#  "type"=>"*",
#  "count"=>0},
#  {"state"=>"ACCEPTED",
#  "type"=>"*",
#  "count"=>0},
#  {"state"=>"FINISHED",
#  "type"=>"*",
#  "count"=>0}]
```
