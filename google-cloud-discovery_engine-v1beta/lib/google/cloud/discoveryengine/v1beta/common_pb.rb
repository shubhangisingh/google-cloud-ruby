# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/common.proto

require 'google/protobuf'

require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/discoveryengine/v1beta/common.proto", :syntax => :proto3) do
    add_message "google.cloud.discoveryengine.v1beta.Interval" do
      oneof :min do
        optional :minimum, :double, 1
        optional :exclusive_minimum, :double, 2
      end
      oneof :max do
        optional :maximum, :double, 3
        optional :exclusive_maximum, :double, 4
      end
    end
    add_message "google.cloud.discoveryengine.v1beta.CustomAttribute" do
      repeated :text, :string, 1
      repeated :numbers, :double, 2
    end
    add_message "google.cloud.discoveryengine.v1beta.UserInfo" do
      optional :user_id, :string, 1
      optional :user_agent, :string, 2
    end
  end
end

module Google
  module Cloud
    module DiscoveryEngine
      module V1beta
        Interval = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Interval").msgclass
        CustomAttribute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.CustomAttribute").msgclass
        UserInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.UserInfo").msgclass
      end
    end
  end
end
