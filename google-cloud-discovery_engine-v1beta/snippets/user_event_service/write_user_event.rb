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

# [START discoveryengine_v1beta_generated_UserEventService_WriteUserEvent_sync]
require "google/cloud/discovery_engine/v1beta"

##
# Snippet for the write_user_event call in the UserEventService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Client#write_user_event.
# It may require modification in order to execute successfully.
#
def write_user_event
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::DiscoveryEngine::V1beta::WriteUserEventRequest.new

  # Call the write_user_event method.
  result = client.write_user_event request

  # The returned object is of type Google::Cloud::DiscoveryEngine::V1beta::UserEvent.
  p result
end
# [END discoveryengine_v1beta_generated_UserEventService_WriteUserEvent_sync]
