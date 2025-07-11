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
    module DiscoveryEngine
      module V1
        # Defines circumstances to be checked before allowing a behavior
        # @!attribute [rw] query_terms
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::Condition::QueryTerm>]
        #     Search only
        #     A list of terms to match the query on.
        #     Cannot be set when
        #     {::Google::Cloud::DiscoveryEngine::V1::Condition#query_regex Condition.query_regex}
        #     is set.
        #
        #     Maximum of 10 query terms.
        # @!attribute [rw] active_time_range
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::Condition::TimeRange>]
        #     Range of time(s) specifying when condition is active.
        #
        #     Maximum of 10 time ranges.
        # @!attribute [rw] query_regex
        #   @return [::String]
        #     Optional. Query regex to match the whole search query.
        #     Cannot be set when
        #     {::Google::Cloud::DiscoveryEngine::V1::Condition#query_terms Condition.query_terms}
        #     is set. Only supported for Basic Site Search promotion serving controls.
        class Condition
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Matcher for search request query
          # @!attribute [rw] value
          #   @return [::String]
          #     The specific query value to match against
          #
          #     Must be lowercase, must be UTF-8.
          #     Can have at most 3 space separated terms if full_match is true.
          #     Cannot be an empty string.
          #     Maximum length of 5000 characters.
          # @!attribute [rw] full_match
          #   @return [::Boolean]
          #     Whether the search query needs to exactly match the query term.
          class QueryTerm
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Used for time-dependent conditions.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Start of time range.
          #
          #     Range is inclusive.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     End of time range.
          #
          #     Range is inclusive.
          #     Must be in the future.
          class TimeRange
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Defines a conditioned behavior to employ during serving.
        # Must be attached to a
        # {::Google::Cloud::DiscoveryEngine::V1::ServingConfig ServingConfig} to be
        # considered at serving time. Permitted actions dependent on `SolutionType`.
        # @!attribute [rw] boost_action
        #   @return [::Google::Cloud::DiscoveryEngine::V1::Control::BoostAction]
        #     Defines a boost-type control
        #
        #     Note: The following fields are mutually exclusive: `boost_action`, `filter_action`, `redirect_action`, `synonyms_action`, `promote_action`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] filter_action
        #   @return [::Google::Cloud::DiscoveryEngine::V1::Control::FilterAction]
        #     Defines a filter-type control
        #     Currently not supported by Recommendation
        #
        #     Note: The following fields are mutually exclusive: `filter_action`, `boost_action`, `redirect_action`, `synonyms_action`, `promote_action`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] redirect_action
        #   @return [::Google::Cloud::DiscoveryEngine::V1::Control::RedirectAction]
        #     Defines a redirect-type control.
        #
        #     Note: The following fields are mutually exclusive: `redirect_action`, `boost_action`, `filter_action`, `synonyms_action`, `promote_action`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] synonyms_action
        #   @return [::Google::Cloud::DiscoveryEngine::V1::Control::SynonymsAction]
        #     Treats a group of terms as synonyms of one another.
        #
        #     Note: The following fields are mutually exclusive: `synonyms_action`, `boost_action`, `filter_action`, `redirect_action`, `promote_action`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] promote_action
        #   @return [::Google::Cloud::DiscoveryEngine::V1::Control::PromoteAction]
        #     Promote certain links based on predefined trigger queries.
        #
        #     Note: The following fields are mutually exclusive: `promote_action`, `boost_action`, `filter_action`, `redirect_action`, `synonyms_action`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. Fully qualified name
        #     `projects/*/locations/global/dataStore/*/controls/*`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. Human readable name. The identifier used in UI views.
        #
        #     Must be UTF-8 encoded string. Length limit is 128 characters.
        #     Otherwise an INVALID ARGUMENT error is thrown.
        # @!attribute [r] associated_serving_config_ids
        #   @return [::Array<::String>]
        #     Output only. List of all
        #     {::Google::Cloud::DiscoveryEngine::V1::ServingConfig ServingConfig} IDs this
        #     control is attached to. May take up to 10 minutes to update after changes.
        # @!attribute [rw] solution_type
        #   @return [::Google::Cloud::DiscoveryEngine::V1::SolutionType]
        #     Required. Immutable. What solution the control belongs to.
        #
        #     Must be compatible with vertical of resource.
        #     Otherwise an INVALID ARGUMENT error is thrown.
        # @!attribute [rw] use_cases
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::SearchUseCase>]
        #     Specifies the use case for the control.
        #     Affects what condition fields can be set.
        #     Only applies to
        #     {::Google::Cloud::DiscoveryEngine::V1::SolutionType::SOLUTION_TYPE_SEARCH SOLUTION_TYPE_SEARCH}.
        #     Currently only allow one use case per control.
        #     Must be set when solution_type is
        #     {::Google::Cloud::DiscoveryEngine::V1::SolutionType::SOLUTION_TYPE_SEARCH SolutionType.SOLUTION_TYPE_SEARCH}.
        # @!attribute [rw] conditions
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::Condition>]
        #     Determines when the associated action will trigger.
        #
        #     Omit to always apply the action.
        #     Currently only a single condition may be specified.
        #     Otherwise an INVALID ARGUMENT error is thrown.
        class Control
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Adjusts order of products in returned list.
          # @!attribute [rw] fixed_boost
          #   @return [::Float]
          #     Optional. Strength of the boost, which should be in [-1, 1]. Negative
          #     boost means demotion. Default is 0.0 (No-op).
          #
          #     Note: The following fields are mutually exclusive: `fixed_boost`, `interpolation_boost_spec`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] interpolation_boost_spec
          #   @return [::Google::Cloud::DiscoveryEngine::V1::Control::BoostAction::InterpolationBoostSpec]
          #     Optional. Complex specification for custom ranking based on customer
          #     defined attribute value.
          #
          #     Note: The following fields are mutually exclusive: `interpolation_boost_spec`, `fixed_boost`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] boost
          #   @deprecated This field is deprecated and may be removed in the next major version update.
          #   @return [::Float]
          #     Strength of the boost, which should be in [-1, 1]. Negative
          #     boost means demotion. Default is 0.0 (No-op).
          # @!attribute [rw] filter
          #   @return [::String]
          #     Required. Specifies which products to apply the boost to.
          #
          #     If no filter is provided all products will be boosted (No-op).
          #     Syntax documentation:
          #     https://cloud.google.com/retail/docs/filter-and-order
          #     Maximum length is 5000 characters.
          #     Otherwise an INVALID ARGUMENT error is thrown.
          # @!attribute [rw] data_store
          #   @return [::String]
          #     Required. Specifies which data store's documents can be boosted by this
          #     control. Full data store name e.g.
          #     projects/123/locations/global/collections/default_collection/dataStores/default_data_store
          class BoostAction
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Specification for custom ranking based on customer specified attribute
            # value. It provides more controls for customized ranking than the simple
            # (condition, boost) combination above.
            # @!attribute [rw] field_name
            #   @return [::String]
            #     Optional. The name of the field whose value will be used to determine
            #     the boost amount.
            # @!attribute [rw] attribute_type
            #   @return [::Google::Cloud::DiscoveryEngine::V1::Control::BoostAction::InterpolationBoostSpec::AttributeType]
            #     Optional. The attribute type to be used to determine the boost amount.
            #     The attribute value can be derived from the field value of the
            #     specified field_name. In the case of numerical it is straightforward
            #     i.e. attribute_value = numerical_field_value. In the case of freshness
            #     however, attribute_value = (time.now() - datetime_field_value).
            # @!attribute [rw] interpolation_type
            #   @return [::Google::Cloud::DiscoveryEngine::V1::Control::BoostAction::InterpolationBoostSpec::InterpolationType]
            #     Optional. The interpolation type to be applied to connect the control
            #     points listed below.
            # @!attribute [rw] control_points
            #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::Control::BoostAction::InterpolationBoostSpec::ControlPoint>]
            #     Optional. The control points used to define the curve. The monotonic
            #     function (defined through the interpolation_type above) passes through
            #     the control points listed here.
            class InterpolationBoostSpec
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # The control points used to define the curve. The curve defined
              # through these control points can only be monotonically increasing
              # or decreasing(constant values are acceptable).
              # @!attribute [rw] attribute_value
              #   @return [::String]
              #     Optional. Can be one of:
              #     1. The numerical field value.
              #     2. The duration spec for freshness:
              #     The value must be formatted as an XSD `dayTimeDuration` value (a
              #     restricted subset of an ISO 8601 duration value). The pattern for
              #     this is: `[nD][T[nH][nM][nS]]`.
              # @!attribute [rw] boost_amount
              #   @return [::Float]
              #     Optional. The value between -1 to 1 by which to boost the score if
              #     the attribute_value evaluates to the value specified above.
              class ControlPoint
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # The attribute(or function) for which the custom ranking is to be
              # applied.
              module AttributeType
                # Unspecified AttributeType.
                ATTRIBUTE_TYPE_UNSPECIFIED = 0

                # The value of the numerical field will be used to dynamically update
                # the boost amount. In this case, the attribute_value (the x value)
                # of the control point will be the actual value of the numerical
                # field for which the boost_amount is specified.
                NUMERICAL = 1

                # For the freshness use case the attribute value will be the duration
                # between the current time and the date in the datetime field
                # specified. The value must be formatted as an XSD `dayTimeDuration`
                # value (a restricted subset of an ISO 8601 duration value). The
                # pattern for this is: `[nD][T[nH][nM][nS]]`.
                # For example, `5D`, `3DT12H30M`, `T24H`.
                FRESHNESS = 2
              end

              # The interpolation type to be applied. Default will be linear
              # (Piecewise Linear).
              module InterpolationType
                # Interpolation type is unspecified. In this case, it defaults to
                # Linear.
                INTERPOLATION_TYPE_UNSPECIFIED = 0

                # Piecewise linear interpolation will be applied.
                LINEAR = 1
              end
            end
          end

          # Specified which products may be included in results.
          # Uses same filter as boost.
          # @!attribute [rw] filter
          #   @return [::String]
          #     Required. A filter to apply on the matching condition results.
          #
          #     Required
          #     Syntax documentation:
          #     https://cloud.google.com/retail/docs/filter-and-order
          #     Maximum length is 5000 characters. Otherwise an INVALID
          #     ARGUMENT error is thrown.
          # @!attribute [rw] data_store
          #   @return [::String]
          #     Required. Specifies which data store's documents can be filtered by this
          #     control. Full data store name e.g.
          #     projects/123/locations/global/collections/default_collection/dataStores/default_data_store
          class FilterAction
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Redirects a shopper to the provided URI.
          # @!attribute [rw] redirect_uri
          #   @return [::String]
          #     Required. The URI to which the shopper will be redirected.
          #
          #     Required.
          #     URI must have length equal or less than 2000 characters.
          #     Otherwise an INVALID ARGUMENT error is thrown.
          class RedirectAction
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Creates a set of terms that will act as synonyms of one another.
          #
          # Example: "happy" will also be considered as "glad", "glad" will also be
          # considered as "happy".
          # @!attribute [rw] synonyms
          #   @return [::Array<::String>]
          #     Defines a set of synonyms.
          #     Can specify up to 100 synonyms.
          #     Must specify at least 2 synonyms. Otherwise an INVALID ARGUMENT error is
          #     thrown.
          class SynonymsAction
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Promote certain links based on some trigger queries.
          #
          # Example: Promote shoe store link when searching for `shoe` keyword.
          # The link can be outside of associated data store.
          # @!attribute [rw] data_store
          #   @return [::String]
          #     Required. Data store with which this promotion is attached to.
          # @!attribute [rw] search_link_promotion
          #   @return [::Google::Cloud::DiscoveryEngine::V1::SearchLinkPromotion]
          #     Required. Promotion attached to this action.
          class PromoteAction
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
