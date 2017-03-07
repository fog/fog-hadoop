#Yarn use

````
compute = Fog::Compute::Hadoop.new(@options)
compute.get_metrics
```

```
# => {"appsSubmit`ted"=>0, "appsCompleted"=>0, "appsPending"=>0, "appsRunning"=>0, "appsFailed"=>0, "appsKilled"=>0, "reservedMB"=>0, "availableMB"=>16384, "allocatedMB"=>0, "containersAllocated"=>0, "containersReserved"=>0, "containersPending"=>0, "totalMB"=>16384, "totalNodes"=>2, "lostNodes"=>0, "unhealthyNodes"=>0, "decommissionedNodes"=>0, "rebootedNodes"=>0, "activeNodes"=>2}
```