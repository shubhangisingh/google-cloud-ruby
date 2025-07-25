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
    module AIPlatform
      module V1
        # Config for the embedding model to use for RAG.
        # @!attribute [rw] vertex_prediction_endpoint
        #   @return [::Google::Cloud::AIPlatform::V1::RagEmbeddingModelConfig::VertexPredictionEndpoint]
        #     The Vertex AI Prediction Endpoint that either refers to a publisher model
        #     or an endpoint that is hosting a 1P fine-tuned text embedding model.
        #     Endpoints hosting non-1P fine-tuned text embedding models are
        #     currently not supported.
        #     This is used for dense vector search.
        class RagEmbeddingModelConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Config representing a model hosted on Vertex Prediction Endpoint.
          # @!attribute [rw] endpoint
          #   @return [::String]
          #     Required. The endpoint resource name.
          #     Format:
          #     `projects/{project}/locations/{location}/publishers/{publisher}/models/{model}`
          #     or
          #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
          # @!attribute [r] model
          #   @return [::String]
          #     Output only. The resource name of the model that is deployed on the
          #     endpoint. Present only when the endpoint is not a publisher model.
          #     Pattern:
          #     `projects/{project}/locations/{location}/models/{model}`
          # @!attribute [r] model_version_id
          #   @return [::String]
          #     Output only. Version ID of the model that is deployed on the endpoint.
          #     Present only when the endpoint is not a publisher model.
          class VertexPredictionEndpoint
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Config for the Vector DB to use for RAG.
        # @!attribute [rw] rag_managed_db
        #   @return [::Google::Cloud::AIPlatform::V1::RagVectorDbConfig::RagManagedDb]
        #     The config for the RAG-managed Vector DB.
        #
        #     Note: The following fields are mutually exclusive: `rag_managed_db`, `pinecone`, `vertex_vector_search`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] pinecone
        #   @return [::Google::Cloud::AIPlatform::V1::RagVectorDbConfig::Pinecone]
        #     The config for the Pinecone.
        #
        #     Note: The following fields are mutually exclusive: `pinecone`, `rag_managed_db`, `vertex_vector_search`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] vertex_vector_search
        #   @return [::Google::Cloud::AIPlatform::V1::RagVectorDbConfig::VertexVectorSearch]
        #     The config for the Vertex Vector Search.
        #
        #     Note: The following fields are mutually exclusive: `vertex_vector_search`, `rag_managed_db`, `pinecone`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] api_auth
        #   @return [::Google::Cloud::AIPlatform::V1::ApiAuth]
        #     Authentication config for the chosen Vector DB.
        # @!attribute [rw] rag_embedding_model_config
        #   @return [::Google::Cloud::AIPlatform::V1::RagEmbeddingModelConfig]
        #     Optional. Immutable. The embedding model config of the Vector DB.
        class RagVectorDbConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The config for the default RAG-managed Vector DB.
          # @!attribute [rw] knn
          #   @return [::Google::Cloud::AIPlatform::V1::RagVectorDbConfig::RagManagedDb::KNN]
          #     Performs a KNN search on RagCorpus.
          #     Default choice if not specified.
          #
          #     Note: The following fields are mutually exclusive: `knn`, `ann`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] ann
          #   @return [::Google::Cloud::AIPlatform::V1::RagVectorDbConfig::RagManagedDb::ANN]
          #     Performs an ANN search on RagCorpus. Use this if you have a lot of
          #     files (> 10K) in your RagCorpus and want to reduce the search latency.
          #
          #     Note: The following fields are mutually exclusive: `ann`, `knn`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class RagManagedDb
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Config for KNN search.
            class KNN
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Config for ANN search.
            #
            # RagManagedDb uses a tree-based structure to partition data and
            # facilitate faster searches. As a tradeoff, it requires longer indexing
            # time and manual triggering of index rebuild via the ImportRagFiles and
            # UpdateRagCorpus API.
            # @!attribute [rw] tree_depth
            #   @return [::Integer]
            #     The depth of the tree-based structure. Only depth values of 2 and 3 are
            #     supported.
            #
            #     Recommended value is 2 if you have if you have O(10K) files in the
            #     RagCorpus and set this to 3 if more than that.
            #
            #     Default value is 2.
            # @!attribute [rw] leaf_count
            #   @return [::Integer]
            #     Number of leaf nodes in the tree-based structure. Each leaf node
            #     contains groups of closely related vectors along with their
            #     corresponding centroid.
            #
            #     Recommended value is 10 * sqrt(num of RagFiles in your RagCorpus).
            #
            #     Default value is 500.
            class ANN
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # The config for the Pinecone.
          # @!attribute [rw] index_name
          #   @return [::String]
          #     Pinecone index name.
          #     This value cannot be changed after it's set.
          class Pinecone
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The config for the Vertex Vector Search.
          # @!attribute [rw] index_endpoint
          #   @return [::String]
          #     The resource name of the Index Endpoint.
          #     Format:
          #     `projects/{project}/locations/{location}/indexEndpoints/{index_endpoint}`
          # @!attribute [rw] index
          #   @return [::String]
          #     The resource name of the Index.
          #     Format:
          #     `projects/{project}/locations/{location}/indexes/{index}`
          class VertexVectorSearch
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # RagFile status.
        # @!attribute [r] state
        #   @return [::Google::Cloud::AIPlatform::V1::FileStatus::State]
        #     Output only. RagFile state.
        # @!attribute [r] error_status
        #   @return [::String]
        #     Output only. Only when the `state` field is ERROR.
        class FileStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # RagFile state.
          module State
            # RagFile state is unspecified.
            STATE_UNSPECIFIED = 0

            # RagFile resource has been created and indexed successfully.
            ACTIVE = 1

            # RagFile resource is in a problematic state.
            # See `error_message` field for details.
            ERROR = 2
          end
        end

        # Config for the Vertex AI Search.
        # @!attribute [rw] serving_config
        #   @return [::String]
        #     Vertex AI Search Serving Config resource full name. For example,
        #     `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/servingConfigs/{serving_config}`
        #     or
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/servingConfigs/{serving_config}`.
        class VertexAiSearchConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # RagCorpus status.
        # @!attribute [r] state
        #   @return [::Google::Cloud::AIPlatform::V1::CorpusStatus::State]
        #     Output only. RagCorpus life state.
        # @!attribute [r] error_status
        #   @return [::String]
        #     Output only. Only when the `state` field is ERROR.
        class CorpusStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # RagCorpus life state.
          module State
            # This state is not supposed to happen.
            UNKNOWN = 0

            # RagCorpus resource entry is initialized, but hasn't done validation.
            INITIALIZED = 1

            # RagCorpus is provisioned successfully and is ready to serve.
            ACTIVE = 2

            # RagCorpus is in a problematic situation.
            # See `error_message` field for details.
            ERROR = 3
          end
        end

        # A RagCorpus is a RagFile container and a project can have multiple
        # RagCorpora.
        # @!attribute [rw] vector_db_config
        #   @return [::Google::Cloud::AIPlatform::V1::RagVectorDbConfig]
        #     Optional. Immutable. The config for the Vector DBs.
        #
        #     Note: The following fields are mutually exclusive: `vector_db_config`, `vertex_ai_search_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] vertex_ai_search_config
        #   @return [::Google::Cloud::AIPlatform::V1::VertexAiSearchConfig]
        #     Optional. Immutable. The config for the Vertex AI Search.
        #
        #     Note: The following fields are mutually exclusive: `vertex_ai_search_config`, `vector_db_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the RagCorpus.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the RagCorpus.
        #     The name can be up to 128 characters long and can consist of any UTF-8
        #     characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. The description of the RagCorpus.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this RagCorpus was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this RagCorpus was last updated.
        # @!attribute [r] corpus_status
        #   @return [::Google::Cloud::AIPlatform::V1::CorpusStatus]
        #     Output only. RagCorpus state.
        # @!attribute [rw] encryption_spec
        #   @return [::Google::Cloud::AIPlatform::V1::EncryptionSpec]
        #     Optional. Immutable. The CMEK key name used to encrypt at-rest data related
        #     to this Corpus. Only applicable to RagManagedDb option for Vector DB. This
        #     field can only be set at corpus creation time, and cannot be updated or
        #     deleted.
        class RagCorpus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A RagFile contains user data for chunking, embedding and indexing.
        # @!attribute [r] gcs_source
        #   @return [::Google::Cloud::AIPlatform::V1::GcsSource]
        #     Output only. Google Cloud Storage location of the RagFile.
        #     It does not support wildcards in the Cloud Storage uri for now.
        #
        #     Note: The following fields are mutually exclusive: `gcs_source`, `google_drive_source`, `direct_upload_source`, `slack_source`, `jira_source`, `share_point_sources`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] google_drive_source
        #   @return [::Google::Cloud::AIPlatform::V1::GoogleDriveSource]
        #     Output only. Google Drive location. Supports importing individual files
        #     as well as Google Drive folders.
        #
        #     Note: The following fields are mutually exclusive: `google_drive_source`, `gcs_source`, `direct_upload_source`, `slack_source`, `jira_source`, `share_point_sources`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] direct_upload_source
        #   @return [::Google::Cloud::AIPlatform::V1::DirectUploadSource]
        #     Output only. The RagFile is encapsulated and uploaded in the
        #     UploadRagFile request.
        #
        #     Note: The following fields are mutually exclusive: `direct_upload_source`, `gcs_source`, `google_drive_source`, `slack_source`, `jira_source`, `share_point_sources`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] slack_source
        #   @return [::Google::Cloud::AIPlatform::V1::SlackSource]
        #     The RagFile is imported from a Slack channel.
        #
        #     Note: The following fields are mutually exclusive: `slack_source`, `gcs_source`, `google_drive_source`, `direct_upload_source`, `jira_source`, `share_point_sources`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] jira_source
        #   @return [::Google::Cloud::AIPlatform::V1::JiraSource]
        #     The RagFile is imported from a Jira query.
        #
        #     Note: The following fields are mutually exclusive: `jira_source`, `gcs_source`, `google_drive_source`, `direct_upload_source`, `slack_source`, `share_point_sources`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] share_point_sources
        #   @return [::Google::Cloud::AIPlatform::V1::SharePointSources]
        #     The RagFile is imported from a SharePoint source.
        #
        #     Note: The following fields are mutually exclusive: `share_point_sources`, `gcs_source`, `google_drive_source`, `direct_upload_source`, `slack_source`, `jira_source`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the RagFile.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the RagFile.
        #     The name can be up to 128 characters long and can consist of any UTF-8
        #     characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. The description of the RagFile.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this RagFile was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this RagFile was last updated.
        # @!attribute [r] file_status
        #   @return [::Google::Cloud::AIPlatform::V1::FileStatus]
        #     Output only. State of the RagFile.
        class RagFile
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A RagChunk includes the content of a chunk of a RagFile, and associated
        # metadata.
        # @!attribute [rw] text
        #   @return [::String]
        #     The content of the chunk.
        # @!attribute [rw] page_span
        #   @return [::Google::Cloud::AIPlatform::V1::RagChunk::PageSpan]
        #     If populated, represents where the chunk starts and ends in the document.
        class RagChunk
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents where the chunk starts and ends in the document.
          # @!attribute [rw] first_page
          #   @return [::Integer]
          #     Page where chunk starts in the document. Inclusive. 1-indexed.
          # @!attribute [rw] last_page
          #   @return [::Integer]
          #     Page where chunk ends in the document. Inclusive. 1-indexed.
          class PageSpan
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Specifies the size and overlap of chunks for RagFiles.
        # @!attribute [rw] fixed_length_chunking
        #   @return [::Google::Cloud::AIPlatform::V1::RagFileChunkingConfig::FixedLengthChunking]
        #     Specifies the fixed length chunking config.
        class RagFileChunkingConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Specifies the fixed length chunking config.
          # @!attribute [rw] chunk_size
          #   @return [::Integer]
          #     The size of the chunks.
          # @!attribute [rw] chunk_overlap
          #   @return [::Integer]
          #     The overlap between chunks.
          class FixedLengthChunking
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Specifies the transformation config for RagFiles.
        # @!attribute [rw] rag_file_chunking_config
        #   @return [::Google::Cloud::AIPlatform::V1::RagFileChunkingConfig]
        #     Specifies the chunking config for RagFiles.
        class RagFileTransformationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specifies the parsing config for RagFiles.
        # @!attribute [rw] layout_parser
        #   @return [::Google::Cloud::AIPlatform::V1::RagFileParsingConfig::LayoutParser]
        #     The Layout Parser to use for RagFiles.
        #
        #     Note: The following fields are mutually exclusive: `layout_parser`, `llm_parser`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] llm_parser
        #   @return [::Google::Cloud::AIPlatform::V1::RagFileParsingConfig::LlmParser]
        #     The LLM Parser to use for RagFiles.
        #
        #     Note: The following fields are mutually exclusive: `llm_parser`, `layout_parser`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class RagFileParsingConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Document AI Layout Parser config.
          # @!attribute [rw] processor_name
          #   @return [::String]
          #     The full resource name of a Document AI processor or processor version.
          #     The processor must have type `LAYOUT_PARSER_PROCESSOR`. If specified, the
          #     `additional_config.parse_as_scanned_pdf` field must be false.
          #     Format:
          #     * `projects/{project_id}/locations/{location}/processors/{processor_id}`
          #     * `projects/{project_id}/locations/{location}/processors/{processor_id}/processorVersions/{processor_version_id}`
          # @!attribute [rw] max_parsing_requests_per_min
          #   @return [::Integer]
          #     The maximum number of requests the job is allowed to make to the Document
          #     AI processor per minute. Consult
          #     https://cloud.google.com/document-ai/quotas and the Quota page for your
          #     project to set an appropriate value here. If unspecified, a default value
          #     of 120 QPM would be used.
          class LayoutParser
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Specifies the advanced parsing for RagFiles.
          # @!attribute [rw] model_name
          #   @return [::String]
          #     The name of a LLM model used for parsing.
          #     Format:
          #     * `projects/{project_id}/locations/{location}/publishers/{publisher}/models/{model}`
          # @!attribute [rw] max_parsing_requests_per_min
          #   @return [::Integer]
          #     The maximum number of requests the job is allowed to make to the
          #     LLM model per minute. Consult
          #     https://cloud.google.com/vertex-ai/generative-ai/docs/quotas
          #     and your document size to set an appropriate value here. If unspecified,
          #     a default value of 5000 QPM would be used.
          # @!attribute [rw] custom_parsing_prompt
          #   @return [::String]
          #     The prompt to use for parsing. If not specified, a default prompt will
          #     be used.
          class LlmParser
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Config for uploading RagFile.
        # @!attribute [rw] rag_file_transformation_config
        #   @return [::Google::Cloud::AIPlatform::V1::RagFileTransformationConfig]
        #     Specifies the transformation config for RagFiles.
        class UploadRagFileConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config for importing RagFiles.
        # @!attribute [rw] gcs_source
        #   @return [::Google::Cloud::AIPlatform::V1::GcsSource]
        #     Google Cloud Storage location. Supports importing individual files as
        #     well as entire Google Cloud Storage directories. Sample formats:
        #     - `gs://bucket_name/my_directory/object_name/my_file.txt`
        #     - `gs://bucket_name/my_directory`
        #
        #     Note: The following fields are mutually exclusive: `gcs_source`, `google_drive_source`, `slack_source`, `jira_source`, `share_point_sources`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] google_drive_source
        #   @return [::Google::Cloud::AIPlatform::V1::GoogleDriveSource]
        #     Google Drive location. Supports importing individual files as
        #     well as Google Drive folders.
        #
        #     Note: The following fields are mutually exclusive: `google_drive_source`, `gcs_source`, `slack_source`, `jira_source`, `share_point_sources`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] slack_source
        #   @return [::Google::Cloud::AIPlatform::V1::SlackSource]
        #     Slack channels with their corresponding access tokens.
        #
        #     Note: The following fields are mutually exclusive: `slack_source`, `gcs_source`, `google_drive_source`, `jira_source`, `share_point_sources`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] jira_source
        #   @return [::Google::Cloud::AIPlatform::V1::JiraSource]
        #     Jira queries with their corresponding authentication.
        #
        #     Note: The following fields are mutually exclusive: `jira_source`, `gcs_source`, `google_drive_source`, `slack_source`, `share_point_sources`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] share_point_sources
        #   @return [::Google::Cloud::AIPlatform::V1::SharePointSources]
        #     SharePoint sources.
        #
        #     Note: The following fields are mutually exclusive: `share_point_sources`, `gcs_source`, `google_drive_source`, `slack_source`, `jira_source`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] partial_failure_gcs_sink
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Google::Cloud::AIPlatform::V1::GcsDestination]
        #     The Cloud Storage path to write partial failures to.
        #     Deprecated. Prefer to use `import_result_gcs_sink`.
        #
        #     Note: The following fields are mutually exclusive: `partial_failure_gcs_sink`, `partial_failure_bigquery_sink`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] partial_failure_bigquery_sink
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Google::Cloud::AIPlatform::V1::BigQueryDestination]
        #     The BigQuery destination to write partial failures to. It should be a
        #     bigquery table resource name (e.g.
        #     "bq://projectId.bqDatasetId.bqTableId"). The dataset must exist. If the
        #     table does not exist, it will be created with the expected schema. If the
        #     table exists, the schema will be validated and data will be added to this
        #     existing table.
        #     Deprecated. Prefer to use `import_result_bq_sink`.
        #
        #     Note: The following fields are mutually exclusive: `partial_failure_bigquery_sink`, `partial_failure_gcs_sink`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] import_result_gcs_sink
        #   @return [::Google::Cloud::AIPlatform::V1::GcsDestination]
        #     The Cloud Storage path to write import result to.
        #
        #     Note: The following fields are mutually exclusive: `import_result_gcs_sink`, `import_result_bigquery_sink`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] import_result_bigquery_sink
        #   @return [::Google::Cloud::AIPlatform::V1::BigQueryDestination]
        #     The BigQuery destination to write import result to. It should be a
        #     bigquery table resource name (e.g.
        #     "bq://projectId.bqDatasetId.bqTableId"). The dataset must exist. If the
        #     table does not exist, it will be created with the expected schema. If the
        #     table exists, the schema will be validated and data will be added to this
        #     existing table.
        #
        #     Note: The following fields are mutually exclusive: `import_result_bigquery_sink`, `import_result_gcs_sink`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] rag_file_transformation_config
        #   @return [::Google::Cloud::AIPlatform::V1::RagFileTransformationConfig]
        #     Specifies the transformation config for RagFiles.
        # @!attribute [rw] rag_file_parsing_config
        #   @return [::Google::Cloud::AIPlatform::V1::RagFileParsingConfig]
        #     Optional. Specifies the parsing config for RagFiles.
        #     RAG will use the default parser if this field is not set.
        # @!attribute [rw] max_embedding_requests_per_min
        #   @return [::Integer]
        #     Optional. The max number of queries per minute that this job is allowed to
        #     make to the embedding model specified on the corpus. This value is specific
        #     to this job and not shared across other import jobs. Consult the Quotas
        #     page on the project to set an appropriate value here.
        #     If unspecified, a default value of 1,000 QPM would be used.
        # @!attribute [rw] rebuild_ann_index
        #   @return [::Boolean]
        #     Rebuilds the ANN index to optimize for recall on the imported data.
        #     Only applicable for RagCorpora running on RagManagedDb with
        #     `retrieval_strategy` set to `ANN`. The rebuild will be performed using the
        #     existing ANN config set on the RagCorpus. To change the ANN config, please
        #     use the UpdateRagCorpus API.
        #
        #     Default is false, i.e., index is not rebuilt.
        class ImportRagFilesConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration message for RagManagedDb used by RagEngine.
        # @!attribute [rw] scaled
        #   @return [::Google::Cloud::AIPlatform::V1::RagManagedDbConfig::Scaled]
        #     Sets the RagManagedDb to the Scaled tier.
        #
        #     Note: The following fields are mutually exclusive: `scaled`, `basic`, `unprovisioned`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] basic
        #   @return [::Google::Cloud::AIPlatform::V1::RagManagedDbConfig::Basic]
        #     Sets the RagManagedDb to the Basic tier.
        #
        #     Note: The following fields are mutually exclusive: `basic`, `scaled`, `unprovisioned`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] unprovisioned
        #   @return [::Google::Cloud::AIPlatform::V1::RagManagedDbConfig::Unprovisioned]
        #     Sets the RagManagedDb to the Unprovisioned tier.
        #
        #     Note: The following fields are mutually exclusive: `unprovisioned`, `scaled`, `basic`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class RagManagedDbConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Scaled tier offers production grade performance along with
          # autoscaling functionality. It is suitable for customers with large
          # amounts of data or performance sensitive workloads.
          class Scaled
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Basic tier is a cost-effective and low compute tier suitable for
          # the following cases:
          # * Experimenting with RagManagedDb.
          # * Small data size.
          # * Latency insensitive workload.
          # * Only using RAG Engine with external vector DBs.
          #
          # NOTE: This is the default tier if not explicitly chosen.
          class Basic
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Disables the RAG Engine service and deletes all your data held
          # within this service. This will halt the billing of the service.
          #
          # NOTE: Once deleted the data cannot be recovered. To start using
          # RAG Engine again, you will need to update the tier by calling the
          # UpdateRagEngineConfig API.
          class Unprovisioned
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Config for RagEngine.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The name of the RagEngineConfig.
        #     Format:
        #     `projects/{project}/locations/{location}/ragEngineConfig`
        # @!attribute [rw] rag_managed_db_config
        #   @return [::Google::Cloud::AIPlatform::V1::RagManagedDbConfig]
        #     The config of the RagManagedDb used by RagEngine.
        class RagEngineConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
