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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/discoveryengine/v1beta/search_service_pb"
require "google/cloud/discoveryengine/v1beta/search_service_services_pb"
require "google/cloud/discovery_engine/v1beta/search_service"

class ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_search
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::SearchResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    serving_config = "hello world"
    branch = "hello world"
    query = "hello world"
    page_size = 42
    page_token = "hello world"
    offset = 42
    filter = "hello world"
    order_by = "hello world"
    user_info = {}
    facet_specs = [{}]
    boost_spec = {}
    params = {}
    query_expansion_spec = {}
    spell_correction_spec = {}
    user_pseudo_id = "hello world"
    content_search_spec = {}
    safe_search = true
    user_label = {}

    search_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :search, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest, request
      assert_equal "hello world", request["serving_config"]
      assert_equal "hello world", request["branch"]
      assert_equal "hello world", request["query"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal 42, request["offset"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::UserInfo), request["user_info"]
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::FacetSpec, request["facet_specs"].first
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::BoostSpec), request["boost_spec"]
      assert_equal({}, request["params"].to_h)
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::QueryExpansionSpec), request["query_expansion_spec"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::SpellCorrectionSpec), request["spell_correction_spec"]
      assert_equal "hello world", request["user_pseudo_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::ContentSearchSpec), request["content_search_spec"]
      assert_equal true, request["safe_search"]
      assert_equal({}, request["user_label"].to_h)
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, search_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.search({ serving_config: serving_config, branch: branch, query: query, page_size: page_size, page_token: page_token, offset: offset, filter: filter, order_by: order_by, user_info: user_info, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_label: user_label }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.search serving_config: serving_config, branch: branch, query: query, page_size: page_size, page_token: page_token, offset: offset, filter: filter, order_by: order_by, user_info: user_info, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_label: user_label do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.search ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest.new(serving_config: serving_config, branch: branch, query: query, page_size: page_size, page_token: page_token, offset: offset, filter: filter, order_by: order_by, user_info: user_info, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_label: user_label) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.search({ serving_config: serving_config, branch: branch, query: query, page_size: page_size, page_token: page_token, offset: offset, filter: filter, order_by: order_by, user_info: user_info, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_label: user_label }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.search(::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest.new(serving_config: serving_config, branch: branch, query: query, page_size: page_size, page_token: page_token, offset: offset, filter: filter, order_by: order_by, user_info: user_info, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_label: user_label), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, search_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Client::Configuration, config
  end
end
