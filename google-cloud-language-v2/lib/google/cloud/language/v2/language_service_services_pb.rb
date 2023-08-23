# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/language/v2/language_service.proto for package 'google.cloud.language.v2'
# Original file comments:
# Copyright 2023 Google LLC
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
require 'google/cloud/language/v2/language_service_pb'

module Google
  module Cloud
    module Language
      module V2
        module LanguageService
          # Provides text analysis operations such as sentiment analysis and entity
          # recognition.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.language.v2.LanguageService'

            # Analyzes the sentiment of the provided text.
            rpc :AnalyzeSentiment, ::Google::Cloud::Language::V2::AnalyzeSentimentRequest, ::Google::Cloud::Language::V2::AnalyzeSentimentResponse
            # Finds named entities (currently proper names and common nouns) in the text
            # along with entity types, probability, mentions for each entity, and
            # other properties.
            rpc :AnalyzeEntities, ::Google::Cloud::Language::V2::AnalyzeEntitiesRequest, ::Google::Cloud::Language::V2::AnalyzeEntitiesResponse
            # Classifies a document into categories.
            rpc :ClassifyText, ::Google::Cloud::Language::V2::ClassifyTextRequest, ::Google::Cloud::Language::V2::ClassifyTextResponse
            # Moderates a document for harmful and sensitive categories.
            rpc :ModerateText, ::Google::Cloud::Language::V2::ModerateTextRequest, ::Google::Cloud::Language::V2::ModerateTextResponse
            # A convenience method that provides all features in one call.
            rpc :AnnotateText, ::Google::Cloud::Language::V2::AnnotateTextRequest, ::Google::Cloud::Language::V2::AnnotateTextResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end