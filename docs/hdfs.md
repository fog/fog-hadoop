#HDFS use samples

```ruby
@connection_params = {
  hadoop_storage_api_url:     "http://<namenode>:50070/"
}
```

## Get Metrics

```
storage = Fog::Storage::Hadoop.new(@connection_params)
storage.get_metrics
```

```
[
  {
      "name" => "Hadoop:service=NameNode,name=FSNamesystemState",
      "modelerType" => "org.apache.hadoop.hdfs.server.namenode.FSNamesystem",
      "CapacityTotal" => 15636578304,
      "CapacityUsed" => 49152,
      "CapacityRemaining" => 11699875840,
      "TotalLoad" => 2,
      "SnapshotStats" => "{\"SnapshottableDirectories\":0,\"Snapshots\":0}",
      "BlocksTotal" => 0,
      "MaxObjects" => 0,
      "FilesTotal" => 6,
      "PendingReplicationBlocks" => 0,
      "UnderReplicatedBlocks" => 0,
      "ScheduledReplicationBlocks" => 0,
      "PendingDeletionBlocks" => 0,
      "FSState" => "Operational",
      "NumLiveDataNodes" => 2,
      "NumDeadDataNodes" => 0,
      "NumDecomLiveDataNodes" => 0,
      "NumDecomDeadDataNodes" => 0,
      "NumDecommissioningDataNodes" => 0,
      "NumStaleDataNodes" => 0
  }
]
```


