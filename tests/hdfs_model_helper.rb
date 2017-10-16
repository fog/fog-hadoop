def credentials
  {
      hadoop_hdfs_api_url: 'http://localhost:50070'
  }
end


def namenode(service)
  Fog::Hadoop::HDFS::Namenode.new({
     'HostAndPort' => 'machine-1.mycluster:8020',
     'NNRole'      => 'NameNode',
     'State'       => 'active'
  }
  )
end