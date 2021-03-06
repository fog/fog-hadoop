module Fog
  module Hadoop
    class YARN
      class Real
        def get_scheduler
          request(
              :expects => 200,
              :method => 'GET',
              :path => "#{Fog::Hadoop.yarn_endpoint}/scheduler"
          ).body["scheduler"]
        end
      end
      class Mock
        def get_scheduler
          response = Excon::Response.new
          response.status = 200
          response.body =
              {
                  "schedulerInfo" => {
                      "capacity"    => 100.0,
                      "maxCapacity" => 100.0,
                      "queueName"   => "root",
                      "queues"      => {
                          "queue" => [
                              {
                                  "absoluteCapacity"     => 10.5,
                                  "absoluteMaxCapacity"  => 50.0,
                                  "absoluteUsedCapacity" => 0.0,
                                  "capacity"             => 10.5,
                                  "maxCapacity"          => 50.0,
                                  "numApplications"      => 0,
                                  "queueName"            => "a",
                                  "queues"               => {
                                      "queue" => [

                                          {
                                              "absoluteCapacity"     => 3.15,
                                              "absoluteMaxCapacity"  => 25.0,
                                              "absoluteUsedCapacity" => 0.0,
                                              "capacity"             => 30.000002,
                                              "maxCapacity"          => 50.0,
                                              "numApplications"      => 0,
                                              "queueName"            => "a1",
                                              "resourcesUsed" => {
                                                  "memory" => 0,
                                                  "vCores" => 0
                                              },
                                              "state" => "RUNNING",
                                              "usedCapacity" => 0.0,
                                              "usedResources" => "<memory:0, vCores:0>"
                                          },
                                          {
                                              "absoluteCapacity" => 7.35,
                                              "absoluteMaxCapacity" => 50.0,
                                              "absoluteUsedCapacity" => 0.0,
                                              "capacity" => 70.0,
                                              "maxActiveApplications" => 1,
                                              "maxActiveApplicationsPerUser" => 100,
                                              "maxApplications" => 735,
                                              "maxApplicationsPerUser" => 73500,
                                              "maxCapacity" => 100.0,
                                              "numActiveApplications" => 0,
                                              "numApplications" => 0,
                                              "numContainers" => 0,
                                              "numPendingApplications" => 0,
                                              "queueName" => "a2",
                                              "resourcesUsed" => {
                                                  "memory" => 0,
                                                  "vCores" => 0
                                              },
                                              "state" => "RUNNING",
                                              "type" => "capacitySchedulerLeafQueueInfo",
                                              "usedCapacity" => 0.0,
                                              "usedResources" => "<memory:0, vCores:0>",
                                              "userLimit" => 100,
                                              "userLimitFactor" => 100.0,
                                              "users" => nil
                                          }
                                      ]
                                  },
                                  "resourcesUsed" => {
                                      "memory" => 0,
                                      "vCores" => 0
                                  },
                                  "state" => "RUNNING",
                                  "usedCapacity" => 0.0,
                                  "usedResources" => "<memory:0, vCores:0>"
                              },
                              {
                                  "absoluteCapacity" => 89.5,
                                  "absoluteMaxCapacity" => 100.0,
                                  "absoluteUsedCapacity" => 0.0,
                                  "capacity" => 89.5,
                                  "maxCapacity" => 100.0,
                                  "numApplications" => 2,
                                  "queueName" => "b",
                                  "queues" => {
                                      "queue" => [
                                          {
                                              "absoluteCapacity" => 53.7,
                                              "absoluteMaxCapacity" => 100.0,
                                              "absoluteUsedCapacity" => 0.0,
                                              "capacity" => 60.000004,
                                              "maxActiveApplications" => 1,
                                              "maxActiveApplicationsPerUser" => 100,
                                              "maxApplications" => 5370,
                                              "maxApplicationsPerUser" => 537000,
                                              "maxCapacity" => 100.0,
                                              "numActiveApplications" => 1,
                                              "numApplications" => 2,
                                              "numContainers" => 0,
                                              "numPendingApplications" => 1,
                                              "queueName" => "b1",
                                              "resourcesUsed" => {
                                                  "memory" => 0,
                                                  "vCores" => 0
                                              },
                                              "state" => "RUNNING",
                                              "type" => "capacitySchedulerLeafQueueInfo",
                                              "usedCapacity" => 0.0,
                                              "usedResources" => "<memory:0, vCores:0>",
                                              "userLimit" => 100,
                                              "userLimitFactor" => 100.0,
                                              "users" => {
                                                  "user" => [
                                                      {
                                                          "numActiveApplications" => 0,
                                                          "numPendingApplications" => 1,
                                                          "resourcesUsed" => {
                                                              "memory" => 0,
                                                              "vCores" => 0
                                                          },
                                                          "username" => "user2"
                                                      },
                                                      {
                                                          "numActiveApplications" => 1,
                                                          "numPendingApplications" => 0,
                                                          "resourcesUsed" => {
                                                              "memory" => 0,
                                                              "vCores" => 0
                                                          },
                                                          "username" => "user1"
                                                      }
                                                  ]
                                              }
                                          },
                                          {
                                              "absoluteCapacity" => 35.3525,
                                              "absoluteMaxCapacity" => 100.0,
                                              "absoluteUsedCapacity" => 0.0,
                                              "capacity" => 39.5,
                                              "maxActiveApplications" => 1,
                                              "maxActiveApplicationsPerUser" => 100,
                                              "maxApplications" => 3535,
                                              "maxApplicationsPerUser" => 353500,
                                              "maxCapacity" => 100.0,
                                              "numActiveApplications" => 0,
                                              "numApplications" => 0,
                                              "numContainers" => 0,
                                              "numPendingApplications" => 0,
                                              "queueName" => "b2",
                                              "resourcesUsed" => {
                                                  "memory" => 0,
                                                  "vCores" => 0
                                              },
                                              "state" => "RUNNING",
                                              "type" => "capacitySchedulerLeafQueueInfo",
                                              "usedCapacity" => 0.0,
                                              "usedResources" => "<memory:0, vCores:0>",
                                              "userLimit" => 100,
                                              "userLimitFactor" => 100.0,
                                              "users" => nil
                                          },
                                          {
                                              "absoluteCapacity" => 0.4475,
                                              "absoluteMaxCapacity" => 100.0,
                                              "absoluteUsedCapacity" => 0.0,
                                              "capacity" => 0.5,
                                              "maxActiveApplications" => 1,
                                              "maxActiveApplicationsPerUser" => 100,
                                              "maxApplications" => 44,
                                              "maxApplicationsPerUser" => 4400,
                                              "maxCapacity" => 100.0,
                                              "numActiveApplications" => 0,
                                              "numApplications" => 0,
                                              "numContainers" => 0,
                                              "numPendingApplications" => 0,
                                              "queueName" => "b3",
                                              "resourcesUsed" => {
                                                  "memory" => 0,
                                                  "vCores" => 0
                                              },
                                              "state" => "RUNNING",
                                              "type" => "capacitySchedulerLeafQueueInfo",
                                              "usedCapacity" => 0.0,
                                              "usedResources" => "<memory:0, vCores:0>",
                                              "userLimit" => 100,
                                              "userLimitFactor" => 100.0,
                                              "users" => nil
                                          }
                                      ]
                                  },
                                  "resourcesUsed" => {
                                      "memory" => 0,
                                      "vCores" => 0
                                  },
                                  "state" => "RUNNING",
                                  "usedCapacity" => 0.0,
                                  "usedResources" => "<memory:0, vCores:0>"
                              }
                          ]
                      },
                      "type" => "capacityScheduler",
                      "usedCapacity" => 0.0
                  }
              }
          response
        end
      end
    end
  end
end