# frozen_string_literal: true

# Copyright 2024 Google LLC
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
    module Kms
      module V1
        # Request message for
        # {::Google::Cloud::Kms::V1::AutokeyAdmin::Client#update_autokey_config UpdateAutokeyConfig}.
        # @!attribute [rw] autokey_config
        #   @return [::Google::Cloud::Kms::V1::AutokeyConfig]
        #     Required. {::Google::Cloud::Kms::V1::AutokeyConfig AutokeyConfig} with values to
        #     update.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Masks which fields of the
        #     {::Google::Cloud::Kms::V1::AutokeyConfig AutokeyConfig} to update, e.g.
        #     `keyProject`.
        class UpdateAutokeyConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Kms::V1::AutokeyAdmin::Client#get_autokey_config GetAutokeyConfig}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the {::Google::Cloud::Kms::V1::AutokeyConfig AutokeyConfig}
        #     resource, e.g. `folders/{FOLDER_NUMBER}/autokeyConfig`.
        class GetAutokeyConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Cloud KMS Autokey configuration for a folder.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of the {::Google::Cloud::Kms::V1::AutokeyConfig AutokeyConfig}
        #     resource, e.g. `folders/{FOLDER_NUMBER}/autokeyConfig`.
        # @!attribute [rw] key_project
        #   @return [::String]
        #     Optional. Name of the key project, e.g. `projects/{PROJECT_ID}` or
        #     `projects/{PROJECT_NUMBER}`, where Cloud KMS Autokey will provision a new
        #     {::Google::Cloud::Kms::V1::CryptoKey CryptoKey} when a
        #     {::Google::Cloud::Kms::V1::KeyHandle KeyHandle} is created. On
        #     {::Google::Cloud::Kms::V1::AutokeyAdmin::Client#update_autokey_config UpdateAutokeyConfig},
        #     the caller will require `cloudkms.cryptoKeys.setIamPolicy` permission on
        #     this key project. Once configured, for Cloud KMS Autokey to function
        #     properly, this key project must have the Cloud KMS API activated and the
        #     Cloud KMS Service Agent for this key project must be granted the
        #     `cloudkms.admin` role (or pertinent permissions). A request with an empty
        #     key project field will clear the configuration.
        class AutokeyConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Kms::V1::AutokeyAdmin::Client#show_effective_autokey_config ShowEffectiveAutokeyConfig}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Name of the resource project to the show effective Cloud KMS
        #     Autokey configuration for. This may be helpful for interrogating the effect
        #     of nested folder configurations on a given resource project.
        class ShowEffectiveAutokeyConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::Kms::V1::AutokeyAdmin::Client#show_effective_autokey_config ShowEffectiveAutokeyConfig}.
        # @!attribute [rw] key_project
        #   @return [::String]
        #     Name of the key project configured in the resource project's folder
        #     ancestry.
        class ShowEffectiveAutokeyConfigResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
