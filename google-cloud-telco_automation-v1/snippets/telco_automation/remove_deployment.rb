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

# [START telcoautomation_v1_generated_TelcoAutomation_RemoveDeployment_sync]
require "google/cloud/telco_automation/v1"

##
# Snippet for the remove_deployment call in the TelcoAutomation service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::TelcoAutomation::V1::TelcoAutomation::Client#remove_deployment.
# It may require modification in order to execute successfully.
#
def remove_deployment
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::TelcoAutomation::V1::TelcoAutomation::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::TelcoAutomation::V1::RemoveDeploymentRequest.new

  # Call the remove_deployment method.
  result = client.remove_deployment request

  # The returned object is of type Google::Protobuf::Empty.
  p result
end
# [END telcoautomation_v1_generated_TelcoAutomation_RemoveDeployment_sync]