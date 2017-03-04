require "test_helper"

describe "Fog::Yarn[:hadoop] | node requests" do
  before do
    @node_format = {
      "rack"                  => String,
      "state"                 => String,
      "id"                    => String,
      "nodeHostName"          => String,
      "nodeHTTPAddress"       => String,
      "healthStatus"          => String,
      "lastHealthUpdate"      => Integer,
      "healthReport"          => String,
      "numContainers"         => Integer,
      "usedMemoryMB"          => Integer,
      "availMemoryMB"         => Integer,
      "usedVirtualCores"      => Integer,
      "availableVirtualCores" => Integer
    }

    @yarn = Fog::Yarn[:hadoop]
 end
 describe "success" do
   it "#get_node(1)" do
     @yarn.get_node("1").body['node'].
     must_match_schema(@yarn_format)
   end
 end
end
