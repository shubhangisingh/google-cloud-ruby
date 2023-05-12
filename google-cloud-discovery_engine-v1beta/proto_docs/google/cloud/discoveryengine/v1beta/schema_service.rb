# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module DiscoveryEngine
      module V1beta
        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client#get_schema SchemaService.GetSchema}
        # method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The full resource name of the schema, in the format of
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`.
        class GetSchemaRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client#list_schemas SchemaService.ListSchemas}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent data store resource name, in the format of
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema}s
        #     to return. The service may return fewer than this value.
        #
        #     If unspecified, at most 100
        #     {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema}s will be returned.
        #
        #     The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token, received from a previous
        #     {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client#list_schemas SchemaService.ListSchemas}
        #     call. Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to
        #     {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client#list_schemas SchemaService.ListSchemas}
        #     must match the call that provided the page token.
        class ListSchemasRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client#list_schemas SchemaService.ListSchemas}
        # method.
        # @!attribute [rw] schemas
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::Schema>]
        #     The {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema}s.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as
        #     {::Google::Cloud::DiscoveryEngine::V1beta::ListSchemasRequest#page_token ListSchemasRequest.page_token}
        #     to retrieve the next page. If this field is omitted, there are no
        #     subsequent pages.
        class ListSchemasResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client#create_schema SchemaService.CreateSchema}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent data store resource name, in the format of
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
        # @!attribute [rw] schema
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Schema]
        #     Required. The {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema} to
        #     create.
        # @!attribute [rw] schema_id
        #   @return [::String]
        #     Required. The ID to use for the
        #     {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema}, which will become the
        #     final component of the
        #     {::Google::Cloud::DiscoveryEngine::V1beta::Schema#name Schema.name}.
        #
        #     This field should conform to
        #     [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length
        #     limit of 63 characters.
        class CreateSchemaRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client#update_schema SchemaService.UpdateSchema}
        # method.
        # @!attribute [rw] schema
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Schema]
        #     Required. The {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema} to
        #     update.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and the
        #     {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema} is not found, a new
        #     {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema} will be created. In
        #     this situation, `update_mask` is ignored.
        class UpdateSchemaRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client#delete_schema SchemaService.DeleteSchema}
        # method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The full resource name of the schema, in the format of
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`.
        class DeleteSchemaRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for Create Schema LRO.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        class CreateSchemaMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for UpdateSchema LRO.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        class UpdateSchemaMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for DeleteSchema LRO.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        class DeleteSchemaMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
