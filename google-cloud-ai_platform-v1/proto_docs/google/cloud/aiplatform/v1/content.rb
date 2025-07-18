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
    module AIPlatform
      module V1
        # The base structured datatype containing multi-part content of a message.
        #
        # A `Content` includes a `role` field designating the producer of the `Content`
        # and a `parts` field containing multi-part data that contains the content of
        # the message turn.
        # @!attribute [rw] role
        #   @return [::String]
        #     Optional. The producer of the content. Must be either 'user' or 'model'.
        #
        #     Useful to set for multi-turn conversations, otherwise can be left blank
        #     or unset.
        # @!attribute [rw] parts
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Part>]
        #     Required. Ordered `Parts` that constitute a single message. Parts may have
        #     different IANA MIME types.
        class Content
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A datatype containing media that is part of a multi-part `Content` message.
        #
        # A `Part` consists of data which has an associated datatype. A `Part` can only
        # contain one of the accepted types in `Part.data`.
        #
        # A `Part` must have a fixed IANA MIME type identifying the type and subtype
        # of the media if `inline_data` or `file_data` field is filled with raw bytes.
        # @!attribute [rw] text
        #   @return [::String]
        #     Optional. Text part (can be code).
        #
        #     Note: The following fields are mutually exclusive: `text`, `inline_data`, `file_data`, `function_call`, `function_response`, `executable_code`, `code_execution_result`, `thought`, `thought_signature`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] inline_data
        #   @return [::Google::Cloud::AIPlatform::V1::Blob]
        #     Optional. Inlined bytes data.
        #
        #     Note: The following fields are mutually exclusive: `inline_data`, `text`, `file_data`, `function_call`, `function_response`, `executable_code`, `code_execution_result`, `thought`, `thought_signature`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] file_data
        #   @return [::Google::Cloud::AIPlatform::V1::FileData]
        #     Optional. URI based data.
        #
        #     Note: The following fields are mutually exclusive: `file_data`, `text`, `inline_data`, `function_call`, `function_response`, `executable_code`, `code_execution_result`, `thought`, `thought_signature`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] function_call
        #   @return [::Google::Cloud::AIPlatform::V1::FunctionCall]
        #     Optional. A predicted [FunctionCall] returned from the model that
        #     contains a string representing the [FunctionDeclaration.name] with the
        #     parameters and their values.
        #
        #     Note: The following fields are mutually exclusive: `function_call`, `text`, `inline_data`, `file_data`, `function_response`, `executable_code`, `code_execution_result`, `thought`, `thought_signature`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] function_response
        #   @return [::Google::Cloud::AIPlatform::V1::FunctionResponse]
        #     Optional. The result output of a [FunctionCall] that contains a string
        #     representing the [FunctionDeclaration.name] and a structured JSON object
        #     containing any output from the function call. It is used as context to
        #     the model.
        #
        #     Note: The following fields are mutually exclusive: `function_response`, `text`, `inline_data`, `file_data`, `function_call`, `executable_code`, `code_execution_result`, `thought`, `thought_signature`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] executable_code
        #   @return [::Google::Cloud::AIPlatform::V1::ExecutableCode]
        #     Optional. Code generated by the model that is meant to be executed.
        #
        #     Note: The following fields are mutually exclusive: `executable_code`, `text`, `inline_data`, `file_data`, `function_call`, `function_response`, `code_execution_result`, `thought`, `thought_signature`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] code_execution_result
        #   @return [::Google::Cloud::AIPlatform::V1::CodeExecutionResult]
        #     Optional. Result of executing the [ExecutableCode].
        #
        #     Note: The following fields are mutually exclusive: `code_execution_result`, `text`, `inline_data`, `file_data`, `function_call`, `function_response`, `executable_code`, `thought`, `thought_signature`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] thought
        #   @return [::Boolean]
        #     Indicates if the part is thought from the model.
        #
        #     Note: The following fields are mutually exclusive: `thought`, `text`, `inline_data`, `file_data`, `function_call`, `function_response`, `executable_code`, `code_execution_result`, `thought_signature`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] thought_signature
        #   @return [::String]
        #     An opaque signature for the thought so it can be reused in subsequent
        #     requests.
        #
        #     Note: The following fields are mutually exclusive: `thought_signature`, `text`, `inline_data`, `file_data`, `function_call`, `function_response`, `executable_code`, `code_execution_result`, `thought`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] video_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::VideoMetadata]
        #     Optional. Video metadata. The metadata should only be specified while the
        #     video data is presented in inline_data or file_data.
        class Part
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Content blob.
        #
        # It's preferred to send as {::Google::Cloud::AIPlatform::V1::Part#text text}
        # directly rather than raw bytes.
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     Required. The IANA standard MIME type of the source data.
        # @!attribute [rw] data
        #   @return [::String]
        #     Required. Raw bytes.
        class Blob
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # URI based data.
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     Required. The IANA standard MIME type of the source data.
        # @!attribute [rw] file_uri
        #   @return [::String]
        #     Required. URI.
        class FileData
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata describes the input video content.
        # @!attribute [rw] start_offset
        #   @return [::Google::Protobuf::Duration]
        #     Optional. The start offset of the video.
        # @!attribute [rw] end_offset
        #   @return [::Google::Protobuf::Duration]
        #     Optional. The end offset of the video.
        class VideoMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Generation config.
        # @!attribute [rw] temperature
        #   @return [::Float]
        #     Optional. Controls the randomness of predictions.
        # @!attribute [rw] top_p
        #   @return [::Float]
        #     Optional. If specified, nucleus sampling will be used.
        # @!attribute [rw] top_k
        #   @return [::Float]
        #     Optional. If specified, top-k sampling will be used.
        # @!attribute [rw] candidate_count
        #   @return [::Integer]
        #     Optional. Number of candidates to generate.
        # @!attribute [rw] max_output_tokens
        #   @return [::Integer]
        #     Optional. The maximum number of output tokens to generate per message.
        # @!attribute [rw] stop_sequences
        #   @return [::Array<::String>]
        #     Optional. Stop sequences.
        # @!attribute [rw] response_logprobs
        #   @return [::Boolean]
        #     Optional. If true, export the logprobs results in response.
        # @!attribute [rw] logprobs
        #   @return [::Integer]
        #     Optional. Logit probabilities.
        # @!attribute [rw] presence_penalty
        #   @return [::Float]
        #     Optional. Positive penalties.
        # @!attribute [rw] frequency_penalty
        #   @return [::Float]
        #     Optional. Frequency penalties.
        # @!attribute [rw] seed
        #   @return [::Integer]
        #     Optional. Seed.
        # @!attribute [rw] response_mime_type
        #   @return [::String]
        #     Optional. Output response mimetype of the generated candidate text.
        #     Supported mimetype:
        #     - `text/plain`: (default) Text output.
        #     - `application/json`: JSON response in the candidates.
        #     The model needs to be prompted to output the appropriate response type,
        #     otherwise the behavior is undefined.
        #     This is a preview feature.
        # @!attribute [rw] response_schema
        #   @return [::Google::Cloud::AIPlatform::V1::Schema]
        #     Optional. The `Schema` object allows the definition of input and output
        #     data types. These types can be objects, but also primitives and arrays.
        #     Represents a select subset of an [OpenAPI 3.0 schema
        #     object](https://spec.openapis.org/oas/v3.0.3#schema).
        #     If set, a compatible response_mime_type must also be set.
        #     Compatible mimetypes:
        #     `application/json`: Schema for JSON response.
        # @!attribute [rw] response_json_schema
        #   @return [::Google::Protobuf::Value]
        #     Optional. Output schema of the generated response. This is an alternative
        #     to `response_schema` that accepts [JSON Schema](https://json-schema.org/).
        #
        #     If set, `response_schema` must be omitted, but `response_mime_type` is
        #     required.
        #
        #     While the full JSON Schema may be sent, not all features are supported.
        #     Specifically, only the following properties are supported:
        #
        #     - `$id`
        #     - `$defs`
        #     - `$ref`
        #     - `$anchor`
        #     - `type`
        #     - `format`
        #     - `title`
        #     - `description`
        #     - `enum` (for strings and numbers)
        #     - `items`
        #     - `prefixItems`
        #     - `minItems`
        #     - `maxItems`
        #     - `minimum`
        #     - `maximum`
        #     - `anyOf`
        #     - `oneOf` (interpreted the same as `anyOf`)
        #     - `properties`
        #     - `additionalProperties`
        #     - `required`
        #
        #     The non-standard `propertyOrdering` property may also be set.
        #
        #     Cyclic references are unrolled to a limited degree and, as such, may only
        #     be used within non-required properties. (Nullable properties are not
        #     sufficient.) If `$ref` is set on a sub-schema, no other properties, except
        #     for than those starting as a `$`, may be set.
        # @!attribute [rw] routing_config
        #   @return [::Google::Cloud::AIPlatform::V1::GenerationConfig::RoutingConfig]
        #     Optional. Routing configuration.
        # @!attribute [rw] thinking_config
        #   @return [::Google::Cloud::AIPlatform::V1::GenerationConfig::ThinkingConfig]
        #     Optional. Config for thinking features.
        #     An error will be returned if this field is set for models that don't
        #     support thinking.
        class GenerationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The configuration for routing the request to a specific model.
          # @!attribute [rw] auto_mode
          #   @return [::Google::Cloud::AIPlatform::V1::GenerationConfig::RoutingConfig::AutoRoutingMode]
          #     Automated routing.
          #
          #     Note: The following fields are mutually exclusive: `auto_mode`, `manual_mode`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] manual_mode
          #   @return [::Google::Cloud::AIPlatform::V1::GenerationConfig::RoutingConfig::ManualRoutingMode]
          #     Manual routing.
          #
          #     Note: The following fields are mutually exclusive: `manual_mode`, `auto_mode`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class RoutingConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # When automated routing is specified, the routing will be determined by
            # the pretrained routing model and customer provided model routing
            # preference.
            # @!attribute [rw] model_routing_preference
            #   @return [::Google::Cloud::AIPlatform::V1::GenerationConfig::RoutingConfig::AutoRoutingMode::ModelRoutingPreference]
            #     The model routing preference.
            class AutoRoutingMode
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # The model routing preference.
              module ModelRoutingPreference
                # Unspecified model routing preference.
                UNKNOWN = 0

                # Prefer higher quality over low cost.
                PRIORITIZE_QUALITY = 1

                # Balanced model routing preference.
                BALANCED = 2

                # Prefer lower cost over higher quality.
                PRIORITIZE_COST = 3
              end
            end

            # When manual routing is set, the specified model will be used directly.
            # @!attribute [rw] model_name
            #   @return [::String]
            #     The model name to use. Only the public LLM models are accepted. e.g.
            #     'gemini-1.5-pro-001'.
            class ManualRoutingMode
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Config for thinking features.
          # @!attribute [rw] include_thoughts
          #   @return [::Boolean]
          #     Indicates whether to include thoughts in the response.
          #     If true, thoughts are returned only when available.
          # @!attribute [rw] thinking_budget
          #   @return [::Integer]
          #     Optional. Indicates the thinking budget in tokens.
          #     This is only applied when enable_thinking is true.
          class ThinkingConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Safety settings.
        # @!attribute [rw] category
        #   @return [::Google::Cloud::AIPlatform::V1::HarmCategory]
        #     Required. Harm category.
        # @!attribute [rw] threshold
        #   @return [::Google::Cloud::AIPlatform::V1::SafetySetting::HarmBlockThreshold]
        #     Required. The harm block threshold.
        # @!attribute [rw] method
        #   @return [::Google::Cloud::AIPlatform::V1::SafetySetting::HarmBlockMethod]
        #     Optional. Specify if the threshold is used for probability or severity
        #     score. If not specified, the threshold is used for probability score.
        class SafetySetting
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Probability based thresholds levels for blocking.
          module HarmBlockThreshold
            # Unspecified harm block threshold.
            HARM_BLOCK_THRESHOLD_UNSPECIFIED = 0

            # Block low threshold and above (i.e. block more).
            BLOCK_LOW_AND_ABOVE = 1

            # Block medium threshold and above.
            BLOCK_MEDIUM_AND_ABOVE = 2

            # Block only high threshold (i.e. block less).
            BLOCK_ONLY_HIGH = 3

            # Block none.
            BLOCK_NONE = 4

            # Turn off the safety filter.
            OFF = 5
          end

          # Probability vs severity.
          module HarmBlockMethod
            # The harm block method is unspecified.
            HARM_BLOCK_METHOD_UNSPECIFIED = 0

            # The harm block method uses both probability and severity scores.
            SEVERITY = 1

            # The harm block method uses the probability score.
            PROBABILITY = 2
          end
        end

        # Safety rating corresponding to the generated content.
        # @!attribute [r] category
        #   @return [::Google::Cloud::AIPlatform::V1::HarmCategory]
        #     Output only. Harm category.
        # @!attribute [r] probability
        #   @return [::Google::Cloud::AIPlatform::V1::SafetyRating::HarmProbability]
        #     Output only. Harm probability levels in the content.
        # @!attribute [r] probability_score
        #   @return [::Float]
        #     Output only. Harm probability score.
        # @!attribute [r] severity
        #   @return [::Google::Cloud::AIPlatform::V1::SafetyRating::HarmSeverity]
        #     Output only. Harm severity levels in the content.
        # @!attribute [r] severity_score
        #   @return [::Float]
        #     Output only. Harm severity score.
        # @!attribute [r] blocked
        #   @return [::Boolean]
        #     Output only. Indicates whether the content was filtered out because of this
        #     rating.
        class SafetyRating
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Harm probability levels in the content.
          module HarmProbability
            # Harm probability unspecified.
            HARM_PROBABILITY_UNSPECIFIED = 0

            # Negligible level of harm.
            NEGLIGIBLE = 1

            # Low level of harm.
            LOW = 2

            # Medium level of harm.
            MEDIUM = 3

            # High level of harm.
            HIGH = 4
          end

          # Harm severity levels.
          module HarmSeverity
            # Harm severity unspecified.
            HARM_SEVERITY_UNSPECIFIED = 0

            # Negligible level of harm severity.
            HARM_SEVERITY_NEGLIGIBLE = 1

            # Low level of harm severity.
            HARM_SEVERITY_LOW = 2

            # Medium level of harm severity.
            HARM_SEVERITY_MEDIUM = 3

            # High level of harm severity.
            HARM_SEVERITY_HIGH = 4
          end
        end

        # A collection of source attributions for a piece of content.
        # @!attribute [r] citations
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Citation>]
        #     Output only. List of citations.
        class CitationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Source attributions for content.
        # @!attribute [r] start_index
        #   @return [::Integer]
        #     Output only. Start index into the content.
        # @!attribute [r] end_index
        #   @return [::Integer]
        #     Output only. End index into the content.
        # @!attribute [r] uri
        #   @return [::String]
        #     Output only. Url reference of the attribution.
        # @!attribute [r] title
        #   @return [::String]
        #     Output only. Title of the attribution.
        # @!attribute [r] license
        #   @return [::String]
        #     Output only. License of the attribution.
        # @!attribute [r] publication_date
        #   @return [::Google::Type::Date]
        #     Output only. Publication date of the attribution.
        class Citation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A response candidate generated from the model.
        # @!attribute [r] index
        #   @return [::Integer]
        #     Output only. Index of the candidate.
        # @!attribute [r] content
        #   @return [::Google::Cloud::AIPlatform::V1::Content]
        #     Output only. Content parts of the candidate.
        # @!attribute [r] score
        #   @return [::Float]
        #     Output only. Confidence score of the candidate.
        # @!attribute [r] avg_logprobs
        #   @return [::Float]
        #     Output only. Average log probability score of the candidate.
        # @!attribute [r] logprobs_result
        #   @return [::Google::Cloud::AIPlatform::V1::LogprobsResult]
        #     Output only. Log-likelihood scores for the response tokens and top tokens
        # @!attribute [r] finish_reason
        #   @return [::Google::Cloud::AIPlatform::V1::Candidate::FinishReason]
        #     Output only. The reason why the model stopped generating tokens.
        #     If empty, the model has not stopped generating the tokens.
        # @!attribute [r] safety_ratings
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::SafetyRating>]
        #     Output only. List of ratings for the safety of a response candidate.
        #
        #     There is at most one rating per category.
        # @!attribute [r] finish_message
        #   @return [::String]
        #     Output only. Describes the reason the mode stopped generating tokens in
        #     more detail. This is only filled when `finish_reason` is set.
        # @!attribute [r] citation_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::CitationMetadata]
        #     Output only. Source attribution of the generated content.
        # @!attribute [r] grounding_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GroundingMetadata]
        #     Output only. Metadata specifies sources used to ground generated content.
        # @!attribute [r] url_context_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::UrlContextMetadata]
        #     Output only. Metadata related to url context retrieval tool.
        class Candidate
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The reason why the model stopped generating tokens.
          # If empty, the model has not stopped generating the tokens.
          module FinishReason
            # The finish reason is unspecified.
            FINISH_REASON_UNSPECIFIED = 0

            # Token generation reached a natural stopping point or a configured stop
            # sequence.
            STOP = 1

            # Token generation reached the configured maximum output tokens.
            MAX_TOKENS = 2

            # Token generation stopped because the content potentially contains safety
            # violations. NOTE: When streaming,
            # {::Google::Cloud::AIPlatform::V1::Candidate#content content} is empty if
            # content filters blocks the output.
            SAFETY = 3

            # Token generation stopped because the content potentially contains
            # copyright violations.
            RECITATION = 4

            # All other reasons that stopped the token generation.
            OTHER = 5

            # Token generation stopped because the content contains forbidden terms.
            BLOCKLIST = 6

            # Token generation stopped for potentially containing prohibited content.
            PROHIBITED_CONTENT = 7

            # Token generation stopped because the content potentially contains
            # Sensitive Personally Identifiable Information (SPII).
            SPII = 8

            # The function call generated by the model is invalid.
            MALFORMED_FUNCTION_CALL = 9
          end
        end

        # Metadata related to url context retrieval tool.
        # @!attribute [r] url_metadata
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::UrlMetadata>]
        #     Output only. List of url context.
        class UrlContextMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Context of the a single url retrieval.
        # @!attribute [rw] retrieved_url
        #   @return [::String]
        #     Retrieved url by the tool.
        # @!attribute [rw] url_retrieval_status
        #   @return [::Google::Cloud::AIPlatform::V1::UrlMetadata::UrlRetrievalStatus]
        #     Status of the url retrieval.
        class UrlMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Status of the url retrieval.
          module UrlRetrievalStatus
            # Default value. This value is unused.
            URL_RETRIEVAL_STATUS_UNSPECIFIED = 0

            # Url retrieval is successful.
            URL_RETRIEVAL_STATUS_SUCCESS = 1

            # Url retrieval is failed due to error.
            URL_RETRIEVAL_STATUS_ERROR = 2
          end
        end

        # Logprobs Result
        # @!attribute [rw] top_candidates
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::LogprobsResult::TopCandidates>]
        #     Length = total number of decoding steps.
        # @!attribute [rw] chosen_candidates
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::LogprobsResult::Candidate>]
        #     Length = total number of decoding steps.
        #     The chosen candidates may or may not be in top_candidates.
        class LogprobsResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Candidate for the logprobs token and score.
          # @!attribute [rw] token
          #   @return [::String]
          #     The candidate’s token string value.
          # @!attribute [rw] token_id
          #   @return [::Integer]
          #     The candidate’s token id value.
          # @!attribute [rw] log_probability
          #   @return [::Float]
          #     The candidate's log probability.
          class Candidate
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Candidates with top log probabilities at each decoding step.
          # @!attribute [rw] candidates
          #   @return [::Array<::Google::Cloud::AIPlatform::V1::LogprobsResult::Candidate>]
          #     Sorted by log probability in descending order.
          class TopCandidates
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Segment of the content.
        # @!attribute [r] part_index
        #   @return [::Integer]
        #     Output only. The index of a Part object within its parent Content object.
        # @!attribute [r] start_index
        #   @return [::Integer]
        #     Output only. Start index in the given Part, measured in bytes. Offset from
        #     the start of the Part, inclusive, starting at zero.
        # @!attribute [r] end_index
        #   @return [::Integer]
        #     Output only. End index in the given Part, measured in bytes. Offset from
        #     the start of the Part, exclusive, starting at zero.
        # @!attribute [r] text
        #   @return [::String]
        #     Output only. The text corresponding to the segment from the response.
        class Segment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Grounding chunk.
        # @!attribute [rw] web
        #   @return [::Google::Cloud::AIPlatform::V1::GroundingChunk::Web]
        #     Grounding chunk from the web.
        #
        #     Note: The following fields are mutually exclusive: `web`, `retrieved_context`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] retrieved_context
        #   @return [::Google::Cloud::AIPlatform::V1::GroundingChunk::RetrievedContext]
        #     Grounding chunk from context retrieved by the retrieval tools.
        #
        #     Note: The following fields are mutually exclusive: `retrieved_context`, `web`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class GroundingChunk
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Chunk from the web.
          # @!attribute [rw] uri
          #   @return [::String]
          #     URI reference of the chunk.
          # @!attribute [rw] title
          #   @return [::String]
          #     Title of the chunk.
          class Web
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Chunk from context retrieved by the retrieval tools.
          # @!attribute [rw] rag_chunk
          #   @return [::Google::Cloud::AIPlatform::V1::RagChunk]
          #     Additional context for the RAG retrieval result. This is only populated
          #     when using the RAG retrieval tool.
          # @!attribute [rw] uri
          #   @return [::String]
          #     URI reference of the attribution.
          # @!attribute [rw] title
          #   @return [::String]
          #     Title of the attribution.
          # @!attribute [rw] text
          #   @return [::String]
          #     Text of the attribution.
          class RetrievedContext
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Grounding support.
        # @!attribute [rw] segment
        #   @return [::Google::Cloud::AIPlatform::V1::Segment]
        #     Segment of the content this support belongs to.
        # @!attribute [rw] grounding_chunk_indices
        #   @return [::Array<::Integer>]
        #     A list of indices (into 'grounding_chunk') specifying the
        #     citations associated with the claim. For instance [1,3,4] means
        #     that grounding_chunk[1], grounding_chunk[3],
        #     grounding_chunk[4] are the retrieved content attributed to the claim.
        # @!attribute [rw] confidence_scores
        #   @return [::Array<::Float>]
        #     Confidence score of the support references. Ranges from 0 to 1. 1 is the
        #     most confident. This list must have the same size as the
        #     grounding_chunk_indices.
        class GroundingSupport
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata returned to client when grounding is enabled.
        # @!attribute [rw] web_search_queries
        #   @return [::Array<::String>]
        #     Optional. Web search queries for the following-up web search.
        # @!attribute [rw] search_entry_point
        #   @return [::Google::Cloud::AIPlatform::V1::SearchEntryPoint]
        #     Optional. Google search entry for the following-up web searches.
        # @!attribute [rw] grounding_chunks
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::GroundingChunk>]
        #     List of supporting references retrieved from specified grounding source.
        # @!attribute [rw] grounding_supports
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::GroundingSupport>]
        #     Optional. List of grounding support.
        # @!attribute [r] retrieval_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::RetrievalMetadata]
        #     Optional. Output only. Retrieval metadata.
        class GroundingMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Google search entry point.
        # @!attribute [rw] rendered_content
        #   @return [::String]
        #     Optional. Web content snippet that can be embedded in a web page or an app
        #     webview.
        # @!attribute [rw] sdk_blob
        #   @return [::String]
        #     Optional. Base64 encoded JSON representing array of <search term, search
        #     url> tuple.
        class SearchEntryPoint
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to retrieval in the grounding flow.
        # @!attribute [rw] google_search_dynamic_retrieval_score
        #   @return [::Float]
        #     Optional. Score indicating how likely information from Google Search could
        #     help answer the prompt. The score is in the range `[0, 1]`, where 0 is the
        #     least likely and 1 is the most likely. This score is only populated when
        #     Google Search grounding and dynamic retrieval is enabled. It will be
        #     compared to the threshold to determine whether to trigger Google Search.
        class RetrievalMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents token counting info for a single modality.
        # @!attribute [rw] modality
        #   @return [::Google::Cloud::AIPlatform::V1::Modality]
        #     The modality associated with this token count.
        # @!attribute [rw] token_count
        #   @return [::Integer]
        #     Number of tokens.
        class ModalityTokenCount
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Harm categories that will block the content.
        module HarmCategory
          # The harm category is unspecified.
          HARM_CATEGORY_UNSPECIFIED = 0

          # The harm category is hate speech.
          HARM_CATEGORY_HATE_SPEECH = 1

          # The harm category is dangerous content.
          HARM_CATEGORY_DANGEROUS_CONTENT = 2

          # The harm category is harassment.
          HARM_CATEGORY_HARASSMENT = 3

          # The harm category is sexually explicit content.
          HARM_CATEGORY_SEXUALLY_EXPLICIT = 4

          # Deprecated: Election filter is not longer supported.
          # The harm category is civic integrity.
          HARM_CATEGORY_CIVIC_INTEGRITY = 5
        end

        # Content Part modality
        module Modality
          # Unspecified modality.
          MODALITY_UNSPECIFIED = 0

          # Plain text.
          TEXT = 1

          # Image.
          IMAGE = 2

          # Video.
          VIDEO = 3

          # Audio.
          AUDIO = 4

          # Document, e.g. PDF.
          DOCUMENT = 5
        end
      end
    end
  end
end
