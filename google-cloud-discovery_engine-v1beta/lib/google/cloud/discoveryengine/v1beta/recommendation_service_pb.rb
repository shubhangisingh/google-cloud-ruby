# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/recommendation_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1beta/document_pb'
require 'google/cloud/discoveryengine/v1beta/user_event_pb'
require 'google/protobuf/struct_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/discoveryengine/v1beta/recommendation_service.proto", :syntax => :proto3) do
    add_message "google.cloud.discoveryengine.v1beta.RecommendRequest" do
      optional :serving_config, :string, 1
      optional :user_event, :message, 2, "google.cloud.discoveryengine.v1beta.UserEvent"
      optional :page_size, :int32, 3
      optional :filter, :string, 4
      optional :validate_only, :bool, 5
      map :params, :string, :message, 6, "google.protobuf.Value"
      map :user_labels, :string, :string, 8
    end
    add_message "google.cloud.discoveryengine.v1beta.RecommendResponse" do
      repeated :results, :message, 1, "google.cloud.discoveryengine.v1beta.RecommendResponse.RecommendationResult"
      optional :attribution_token, :string, 2
      repeated :missing_ids, :string, 3
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.discoveryengine.v1beta.RecommendResponse.RecommendationResult" do
      optional :id, :string, 1
      optional :document, :message, 2, "google.cloud.discoveryengine.v1beta.Document"
      map :metadata, :string, :message, 3, "google.protobuf.Value"
    end
  end
end

module Google
  module Cloud
    module DiscoveryEngine
      module V1beta
        RecommendRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.RecommendRequest").msgclass
        RecommendResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.RecommendResponse").msgclass
        RecommendResponse::RecommendationResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.RecommendResponse.RecommendationResult").msgclass
      end
    end
  end
end
