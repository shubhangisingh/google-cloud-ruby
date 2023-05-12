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
    module DiscoveryEngine
      module V1beta
        module RecommendationService
          # Path helper methods for the RecommendationService API.
          module Paths
            ##
            # Create a fully-qualified Document resource string.
            #
            # @overload document_path(project:, location:, data_store:, branch:, document:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/dataStores/{data_store}/branches/{branch}/documents/{document}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param data_store [String]
            #   @param branch [String]
            #   @param document [String]
            #
            # @overload document_path(project:, location:, collection:, data_store:, branch:, document:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param collection [String]
            #   @param data_store [String]
            #   @param branch [String]
            #   @param document [String]
            #
            # @return [::String]
            def document_path **args
              resources = {
                "branch:data_store:document:location:project" => (proc do |project:, location:, data_store:, branch:, document:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "data_store cannot contain /" if data_store.to_s.include? "/"
                  raise ::ArgumentError, "branch cannot contain /" if branch.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/dataStores/#{data_store}/branches/#{branch}/documents/#{document}"
                end),
                "branch:collection:data_store:document:location:project" => (proc do |project:, location:, collection:, data_store:, branch:, document:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "collection cannot contain /" if collection.to_s.include? "/"
                  raise ::ArgumentError, "data_store cannot contain /" if data_store.to_s.include? "/"
                  raise ::ArgumentError, "branch cannot contain /" if branch.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/collections/#{collection}/dataStores/#{data_store}/branches/#{branch}/documents/#{document}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified ServingConfig resource string.
            #
            # @overload serving_config_path(project:, location:, data_store:, serving_config:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/dataStores/{data_store}/servingConfigs/{serving_config}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param data_store [String]
            #   @param serving_config [String]
            #
            # @overload serving_config_path(project:, location:, collection:, data_store:, serving_config:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/servingConfigs/{serving_config}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param collection [String]
            #   @param data_store [String]
            #   @param serving_config [String]
            #
            # @return [::String]
            def serving_config_path **args
              resources = {
                "data_store:location:project:serving_config" => (proc do |project:, location:, data_store:, serving_config:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "data_store cannot contain /" if data_store.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/dataStores/#{data_store}/servingConfigs/#{serving_config}"
                end),
                "collection:data_store:location:project:serving_config" => (proc do |project:, location:, collection:, data_store:, serving_config:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "collection cannot contain /" if collection.to_s.include? "/"
                  raise ::ArgumentError, "data_store cannot contain /" if data_store.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/collections/#{collection}/dataStores/#{data_store}/servingConfigs/#{serving_config}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            extend self
          end
        end
      end
    end
  end
end
