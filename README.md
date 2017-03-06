# fog-hadoop
[![Build Status](https://travis-ci.org/aljesusg/fog-hadoop.svg?branch=master)](https://travis-ci.org/aljesusg/fog-hadoop)

Fog connector for Hadoop


# Development

Use https://github.com/vangj/vagrant-hadoop-2.4.1-spark-1.0.1 to have a Hadoop Environment

Run console

```bin/console```


Define options
``
@options = {hadoop_compute_api_url:"http://10.211.55.102:8088/"}

compute = Fog::Compute::Hadoop.new(@options)
compute.get_metrics
```

```=> {"appsSubmit`ted"=>0, "appsCompleted"=>0, "appsPending"=>0, "appsRunning"=>0, "appsFailed"=>0, "appsKilled"=>0, "reservedMB"=>0, "availableMB"=>16384, "allocatedMB"=>0, "containersAllocated"=>0, "containersReserved"=>0, "containersPending"=>0, "totalMB"=>16384, "totalNodes"=>2, "lostNodes"=>0, "unhealthyNodes"=>0, "decommissionedNodes"=>0, "rebootedNodes"=>0, "activeNodes"=>2}```