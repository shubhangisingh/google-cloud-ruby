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

# [START datacatalog_v1beta1_generated_PolicyTagManager_DeletePolicyTag_sync]
require "google/cloud/data_catalog/v1beta1"

##
# Snippet for the delete_policy_tag call in the PolicyTagManager service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::DataCatalog::V1beta1::PolicyTagManager::Client#delete_policy_tag.
# It may require modification in order to execute successfully.
#
def delete_policy_tag
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::DataCatalog::V1beta1::PolicyTagManager::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::DataCatalog::V1beta1::DeletePolicyTagRequest.new

  # Call the delete_policy_tag method.
  result = client.delete_policy_tag request

  # The returned object is of type Google::Protobuf::Empty.
  p result
end
# [END datacatalog_v1beta1_generated_PolicyTagManager_DeletePolicyTag_sync]