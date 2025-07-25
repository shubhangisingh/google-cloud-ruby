# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "google/cloud/ai_platform/v1/pipeline_service"

class ::Google::Cloud::AIPlatform::V1::PipelineService::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_artifact_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.artifact_path project: "value0", location: "value1", metadata_store: "value2", artifact: "value3"
      assert_equal "projects/value0/locations/value1/metadataStores/value2/artifacts/value3", path
    end
  end

  def test_context_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.context_path project: "value0", location: "value1", metadata_store: "value2", context: "value3"
      assert_equal "projects/value0/locations/value1/metadataStores/value2/contexts/value3", path
    end
  end

  def test_custom_job_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.custom_job_path project: "value0", location: "value1", custom_job: "value2"
      assert_equal "projects/value0/locations/value1/customJobs/value2", path
    end
  end

  def test_endpoint_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.endpoint_path project: "value0", location: "value1", endpoint: "value2"
      assert_equal "projects/value0/locations/value1/endpoints/value2", path

      path = client.endpoint_path project: "value0", location: "value1", publisher: "value2", model: "value3"
      assert_equal "projects/value0/locations/value1/publishers/value2/models/value3", path
    end
  end

  def test_execution_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.execution_path project: "value0", location: "value1", metadata_store: "value2", execution: "value3"
      assert_equal "projects/value0/locations/value1/metadataStores/value2/executions/value3", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_model_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.model_path project: "value0", location: "value1", model: "value2"
      assert_equal "projects/value0/locations/value1/models/value2", path
    end
  end

  def test_network_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.network_path project: "value0", network: "value1"
      assert_equal "projects/value0/global/networks/value1", path
    end
  end

  def test_network_attachment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.network_attachment_path project: "value0", region: "value1", networkattachment: "value2"
      assert_equal "projects/value0/regions/value1/networkAttachments/value2", path
    end
  end

  def test_pipeline_job_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.pipeline_job_path project: "value0", location: "value1", pipeline_job: "value2"
      assert_equal "projects/value0/locations/value1/pipelineJobs/value2", path
    end
  end

  def test_training_pipeline_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.training_pipeline_path project: "value0", location: "value1", training_pipeline: "value2"
      assert_equal "projects/value0/locations/value1/trainingPipelines/value2", path
    end
  end
end
