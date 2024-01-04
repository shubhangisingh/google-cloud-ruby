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
    module Translate
      module V3
        # The Google Cloud Storage location for the input content.
        # @!attribute [rw] input_uri
        #   @return [::String]
        #     Required. Source data URI. For example, `gs://my_bucket/my_object`.
        class GcsInputSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An inlined file.
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     Required. The file's mime type.
        # @!attribute [rw] content
        #   @return [::String]
        #     Required. The file's byte contents.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The file's display name.
        class FileInputSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The Google Cloud Storage location for the output content.
        # @!attribute [rw] output_uri_prefix
        #   @return [::String]
        #     Required. Google Cloud Storage URI to output directory. For example,
        #     `gs://bucket/directory`. The requesting user must have write permission to
        #     the bucket. The directory will be created if it doesn't exist.
        class GcsOutputDestination
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end