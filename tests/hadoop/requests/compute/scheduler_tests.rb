Shindo.tests('Fog::Compute[:hadoop] | scheduler request', ['hadoop', 'compute']) do

    @scheduler_format =   {
        "schedulerInfo" => {
            "capacity"    => Float,
            "maxCapacity" => Float,
            "queueName"   => String,
            "queues"      => {
                "queue" => [
                    {
                        "absoluteCapacity"     => Float,
                        "absoluteMaxCapacity"  => Float,
                        "absoluteUsedCapacity" => Float,
                        "capacity"             => Float,
                        "maxCapacity"          => Float,
                        "numApplications"      => Integer,
                        "queueName"            => String,
                        "queues"               => {
                            "queue" => [

                                {
                                    "absoluteCapacity"     => Float,
                                    "absoluteMaxCapacity"  => Float,
                                    "absoluteUsedCapacity" => Float,
                                    "capacity"             => Float,
                                    "maxCapacity"          => Float,
                                    "numApplications"      => Integer,
                                    "queueName"            => String,
                                    "resourcesUsed" => {
                                        "memory" => Integer,
                                        "vCores" => Integer
                                    },
                                    "state" => String,
                                    "usedCapacity" => Float,
                                    "usedResources" => String
                                },
                                {
                                    "absoluteCapacity" => Float,
                                    "absoluteMaxCapacity" => Float,
                                    "absoluteUsedCapacity" => Float,
                                    "capacity" => Float,
                                    "maxActiveApplications" => Integer,
                                    "maxActiveApplicationsPerUser" => Integer,
                                    "maxApplications" => Integer,
                                    "maxApplicationsPerUser" => Integer,
                                    "maxCapacity" => Float,
                                    "numActiveApplications" => Integer,
                                    "numApplications" => Integer,
                                    "numContainers" => Integer,
                                    "numPendingApplications" => Integer,
                                    "queueName" => String,
                                    "resourcesUsed" => {
                                        "memory" => Integer,
                                        "vCores" => Integer
                                    },
                                    "state" => String,
                                    "type" => String,
                                    "usedCapacity" => Float,
                                    "usedResources" => String,
                                    "userLimit" => Integer,
                                    "userLimitFactor" => Float,
                                    "users" => Fog::Nullable
                                }
                            ]
                        },
                        "resourcesUsed" => {
                            "memory" => Integer,
                            "vCores" => Integer
                        },
                        "state" => String,
                        "usedCapacity" => Float,
                        "usedResources" => String
                    },
                    {
                        "absoluteCapacity" => Float,
                        "absoluteMaxCapacity" => Float,
                        "absoluteUsedCapacity" => Float,
                        "capacity" => Float,
                        "maxCapacity" => Float,
                        "numApplications" => Integer,
                        "queueName" => String,
                        "queues" => {
                            "queue" => [
                                {
                                    "absoluteCapacity" => Float,
                                    "absoluteMaxCapacity" => Float,
                                    "absoluteUsedCapacity" => Float,
                                    "capacity" => Float,
                                    "maxActiveApplications" => Integer,
                                    "maxActiveApplicationsPerUser" => Integer,
                                    "maxApplications" => Integer,
                                    "maxApplicationsPerUser" => Integer,
                                    "maxCapacity" => Float,
                                    "numActiveApplications" => Integer,
                                    "numApplications" => Integer,
                                    "numContainers" => Integer,
                                    "numPendingApplications" => Integer,
                                    "queueName" => String,
                                    "resourcesUsed" => {
                                        "memory" => Integer,
                                        "vCores" => Integer
                                    },
                                    "state" => String,
                                    "type" => String,
                                    "usedCapacity" => Float,
                                    "usedResources" => String,
                                    "userLimit" => Integer,
                                    "userLimitFactor" => Float,
                                    "users" => {
                                        "user" => [
                                            {
                                                "numActiveApplications" => Integer,
                                                "numPendingApplications" => Integer,
                                                "resourcesUsed" => {
                                                    "memory" => Integer,
                                                    "vCores" => Integer
                                                },
                                                "username" => String
                                            },
                                            {
                                                "numActiveApplications" => Integer,
                                                "numPendingApplications" => Integer,
                                                "resourcesUsed" => {
                                                    "memory" => Integer,
                                                    "vCores" => Integer
                                                },
                                                "username" => String
                                            }
                                        ]
                                    }
                                },
                                {
                                    "absoluteCapacity" => Float,
                                    "absoluteMaxCapacity" => Float,
                                    "absoluteUsedCapacity" => Float,
                                    "capacity" => Float,
                                    "maxActiveApplications" => Integer,
                                    "maxActiveApplicationsPerUser" => Integer,
                                    "maxApplications" => Integer,
                                    "maxApplicationsPerUser" => Integer,
                                    "maxCapacity" => Float,
                                    "numActiveApplications" => Integer,
                                    "numApplications" => Integer,
                                    "numContainers" => Integer,
                                    "numPendingApplications" => Integer,
                                    "queueName" => String,
                                    "resourcesUsed" => {
                                        "memory" => Integer,
                                        "vCores" => Integer
                                    },
                                    "state" => String,
                                    "type" => String,
                                    "usedCapacity" => Float,
                                    "usedResources" => String,
                                    "userLimit" => Integer,
                                    "userLimitFactor" => Float,
                                    "users" => Fog::Nullable
                                },
                                {
                                    "absoluteCapacity" => Float,
                                    "absoluteMaxCapacity" => Float,
                                    "absoluteUsedCapacity" => Float,
                                    "capacity" => Float,
                                    "maxActiveApplications" => Integer,
                                    "maxActiveApplicationsPerUser" => Integer,
                                    "maxApplications" => Integer,
                                    "maxApplicationsPerUser" => Integer,
                                    "maxCapacity" => Float,
                                    "numActiveApplications" => Integer,
                                    "numApplications" => Integer,
                                    "numContainers" => Integer,
                                    "numPendingApplications" => Integer,
                                    "queueName" => String,
                                    "resourcesUsed" => {
                                        "memory" => Integer,
                                        "vCores" => Integer
                                    },
                                    "state" => String,
                                    "type" => String,
                                    "usedCapacity" => Float,
                                    "usedResources" => String,
                                    "userLimit" => Integer,
                                    "userLimitFactor" => Float,
                                    "users" => Fog::Nullable
                                }
                            ]
                        },
                        "resourcesUsed" => {
                            "memory" => Integer,
                            "vCores" => Integer
                        },
                        "state" => String,
                        "usedCapacity" => Float,
                        "usedResources" => String
                    }
                ]
            },
            "type" => String,
            "usedCapacity" => Float
        }
    }

  tests('success') do
    tests('#get_metrics') do
      schedulers = hadoop_compute_service.get_scheduler
      test 'returns a Hash' do
        schedulers.body.is_a? Hash
      end
      if Fog.mock?
        tests('Scheduler').formats(@scheduler_format, false) do
          schedulers.body
        end
      else
        returns(200) { schedulers.status }
        returns(true) { schedulers.body.is_a? Hash }
      end
    end
  end
end
