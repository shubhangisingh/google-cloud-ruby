# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/discoveryengine/v1beta/recommendation_service.proto for package 'Google.Cloud.DiscoveryEngine.V1beta'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/discoveryengine/v1beta/recommendation_service_pb'

module Google
  module Cloud
    module DiscoveryEngine
      module V1beta
        module RecommendationService
          # Service for making recommendations.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.discoveryengine.v1beta.RecommendationService'

            # Makes a recommendation, which requires a contextual user event.
            rpc :Recommend, ::Google::Cloud::DiscoveryEngine::V1beta::RecommendRequest, ::Google::Cloud::DiscoveryEngine::V1beta::RecommendResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
