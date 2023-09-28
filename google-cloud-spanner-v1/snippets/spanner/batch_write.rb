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

# [START spanner_v1_generated_Spanner_BatchWrite_sync]
require "google/cloud/spanner/v1"

##
# Snippet for the batch_write call in the Spanner service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Spanner::V1::Spanner::Client#batch_write. It may require
# modification in order to execute successfully.
#
def batch_write
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Spanner::V1::Spanner::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Spanner::V1::BatchWriteRequest.new

  # Call the batch_write method to start streaming.
  output = client.batch_write request

  # The returned object is a streamed enumerable yielding elements of type
  # ::Google::Cloud::Spanner::V1::BatchWriteResponse
  output.each do |current_response|
    p current_response
  end
end
# [END spanner_v1_generated_Spanner_BatchWrite_sync]