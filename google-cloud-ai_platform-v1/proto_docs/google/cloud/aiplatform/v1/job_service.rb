# frozen_string_literal: true

# Copyright 2022 Google LLC
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
        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#create_custom_job JobService.CreateCustomJob}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the CustomJob in.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] custom_job
        #   @return [::Google::Cloud::AIPlatform::V1::CustomJob]
        #     Required. The CustomJob to create.
        class CreateCustomJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#get_custom_job JobService.GetCustomJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the CustomJob resource.
        #     Format:
        #     `projects/{project}/locations/{location}/customJobs/{custom_job}`
        class GetCustomJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#list_custom_jobs JobService.ListCustomJobs}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to list the CustomJobs from.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     The standard list filter.
        #
        #     Supported fields:
        #
        #       * `display_name` supports `=`, `!=` comparisons, and `:` wildcard.
        #       * `state` supports `=`, `!=` comparisons.
        #       * `create_time` supports `=`, `!=`,`<`, `<=`,`>`, `>=` comparisons.
        #         `create_time` must be in RFC 3339 format.
        #       * `labels` supports general map functions that is:
        #         `labels.key=value` - key:value equality
        #         `labels.key:* - key existence
        #
        #     Some examples of using the filter are:
        #
        #       * `state="JOB_STATE_SUCCEEDED" AND display_name:"my_job_*"`
        #       * `state!="JOB_STATE_FAILED" OR display_name="my_job"`
        #       * `NOT display_name="my_job"`
        #       * `create_time>"2021-05-18T00:00:00Z"`
        #       * `labels.keyA=valueA`
        #       * `labels.keyB:*`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListCustomJobsResponse#next_page_token ListCustomJobsResponse.next_page_token} of the previous
        #     {::Google::Cloud::AIPlatform::V1::JobService::Client#list_custom_jobs JobService.ListCustomJobs} call.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class ListCustomJobsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::JobService::Client#list_custom_jobs JobService.ListCustomJobs}
        # @!attribute [rw] custom_jobs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::CustomJob>]
        #     List of CustomJobs in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results.
        #     Pass to {::Google::Cloud::AIPlatform::V1::ListCustomJobsRequest#page_token ListCustomJobsRequest.page_token} to obtain that page.
        class ListCustomJobsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#delete_custom_job JobService.DeleteCustomJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the CustomJob resource to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/customJobs/{custom_job}`
        class DeleteCustomJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#cancel_custom_job JobService.CancelCustomJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the CustomJob to cancel.
        #     Format:
        #     `projects/{project}/locations/{location}/customJobs/{custom_job}`
        class CancelCustomJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#create_data_labeling_job JobService.CreateDataLabelingJob}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent of the DataLabelingJob.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] data_labeling_job
        #   @return [::Google::Cloud::AIPlatform::V1::DataLabelingJob]
        #     Required. The DataLabelingJob to create.
        class CreateDataLabelingJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#get_data_labeling_job JobService.GetDataLabelingJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the DataLabelingJob.
        #     Format:
        #     `projects/{project}/locations/{location}/dataLabelingJobs/{data_labeling_job}`
        class GetDataLabelingJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#list_data_labeling_jobs JobService.ListDataLabelingJobs}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent of the DataLabelingJob.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     The standard list filter.
        #
        #     Supported fields:
        #
        #       * `display_name` supports `=`, `!=` comparisons, and `:` wildcard.
        #       * `state` supports `=`, `!=` comparisons.
        #       * `create_time` supports `=`, `!=`,`<`, `<=`,`>`, `>=` comparisons.
        #         `create_time` must be in RFC 3339 format.
        #       * `labels` supports general map functions that is:
        #         `labels.key=value` - key:value equality
        #         `labels.key:* - key existence
        #
        #     Some examples of using the filter are:
        #
        #       * `state="JOB_STATE_SUCCEEDED" AND display_name:"my_job_*"`
        #       * `state!="JOB_STATE_FAILED" OR display_name="my_job"`
        #       * `NOT display_name="my_job"`
        #       * `create_time>"2021-05-18T00:00:00Z"`
        #       * `labels.keyA=valueA`
        #       * `labels.keyB:*`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read. FieldMask represents a set of
        #     symbolic field paths. For example, the mask can be `paths: "name"`. The
        #     "name" here is a field in DataLabelingJob.
        #     If this field is not set, all fields of the DataLabelingJob are returned.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     A comma-separated list of fields to order by, sorted in ascending order by
        #     default.
        #     Use `desc` after a field name for descending.
        class ListDataLabelingJobsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::JobService::Client#list_data_labeling_jobs JobService.ListDataLabelingJobs}.
        # @!attribute [rw] data_labeling_jobs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::DataLabelingJob>]
        #     A list of DataLabelingJobs that matches the specified filter in the
        #     request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The standard List next-page token.
        class ListDataLabelingJobsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#delete_data_labeling_job JobService.DeleteDataLabelingJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the DataLabelingJob to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/dataLabelingJobs/{data_labeling_job}`
        class DeleteDataLabelingJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#cancel_data_labeling_job JobService.CancelDataLabelingJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the DataLabelingJob.
        #     Format:
        #     `projects/{project}/locations/{location}/dataLabelingJobs/{data_labeling_job}`
        class CancelDataLabelingJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#create_hyperparameter_tuning_job JobService.CreateHyperparameterTuningJob}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the HyperparameterTuningJob in.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] hyperparameter_tuning_job
        #   @return [::Google::Cloud::AIPlatform::V1::HyperparameterTuningJob]
        #     Required. The HyperparameterTuningJob to create.
        class CreateHyperparameterTuningJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#get_hyperparameter_tuning_job JobService.GetHyperparameterTuningJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the HyperparameterTuningJob resource.
        #     Format:
        #     `projects/{project}/locations/{location}/hyperparameterTuningJobs/{hyperparameter_tuning_job}`
        class GetHyperparameterTuningJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#list_hyperparameter_tuning_jobs JobService.ListHyperparameterTuningJobs}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to list the HyperparameterTuningJobs
        #     from. Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     The standard list filter.
        #
        #     Supported fields:
        #
        #       * `display_name` supports `=`, `!=` comparisons, and `:` wildcard.
        #       * `state` supports `=`, `!=` comparisons.
        #       * `create_time` supports `=`, `!=`,`<`, `<=`,`>`, `>=` comparisons.
        #         `create_time` must be in RFC 3339 format.
        #       * `labels` supports general map functions that is:
        #         `labels.key=value` - key:value equality
        #         `labels.key:* - key existence
        #
        #     Some examples of using the filter are:
        #
        #       * `state="JOB_STATE_SUCCEEDED" AND display_name:"my_job_*"`
        #       * `state!="JOB_STATE_FAILED" OR display_name="my_job"`
        #       * `NOT display_name="my_job"`
        #       * `create_time>"2021-05-18T00:00:00Z"`
        #       * `labels.keyA=valueA`
        #       * `labels.keyB:*`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListHyperparameterTuningJobsResponse#next_page_token ListHyperparameterTuningJobsResponse.next_page_token} of the previous
        #     {::Google::Cloud::AIPlatform::V1::JobService::Client#list_hyperparameter_tuning_jobs JobService.ListHyperparameterTuningJobs} call.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class ListHyperparameterTuningJobsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::JobService::Client#list_hyperparameter_tuning_jobs JobService.ListHyperparameterTuningJobs}
        # @!attribute [rw] hyperparameter_tuning_jobs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::HyperparameterTuningJob>]
        #     List of HyperparameterTuningJobs in the requested page.
        #     {::Google::Cloud::AIPlatform::V1::HyperparameterTuningJob#trials HyperparameterTuningJob.trials} of the jobs will be not be returned.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results.
        #     Pass to {::Google::Cloud::AIPlatform::V1::ListHyperparameterTuningJobsRequest#page_token ListHyperparameterTuningJobsRequest.page_token} to obtain that
        #     page.
        class ListHyperparameterTuningJobsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#delete_hyperparameter_tuning_job JobService.DeleteHyperparameterTuningJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the HyperparameterTuningJob resource to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/hyperparameterTuningJobs/{hyperparameter_tuning_job}`
        class DeleteHyperparameterTuningJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#cancel_hyperparameter_tuning_job JobService.CancelHyperparameterTuningJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the HyperparameterTuningJob to cancel.
        #     Format:
        #     `projects/{project}/locations/{location}/hyperparameterTuningJobs/{hyperparameter_tuning_job}`
        class CancelHyperparameterTuningJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#create_batch_prediction_job JobService.CreateBatchPredictionJob}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the BatchPredictionJob in.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] batch_prediction_job
        #   @return [::Google::Cloud::AIPlatform::V1::BatchPredictionJob]
        #     Required. The BatchPredictionJob to create.
        class CreateBatchPredictionJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#get_batch_prediction_job JobService.GetBatchPredictionJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the BatchPredictionJob resource.
        #     Format:
        #     `projects/{project}/locations/{location}/batchPredictionJobs/{batch_prediction_job}`
        class GetBatchPredictionJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#list_batch_prediction_jobs JobService.ListBatchPredictionJobs}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to list the BatchPredictionJobs
        #     from. Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     The standard list filter.
        #
        #     Supported fields:
        #
        #       * `display_name` supports `=`, `!=` comparisons, and `:` wildcard.
        #       * `model_display_name` supports `=`, `!=` comparisons.
        #       * `state` supports `=`, `!=` comparisons.
        #       * `create_time` supports `=`, `!=`,`<`, `<=`,`>`, `>=` comparisons.
        #         `create_time` must be in RFC 3339 format.
        #       * `labels` supports general map functions that is:
        #         `labels.key=value` - key:value equality
        #         `labels.key:* - key existence
        #
        #     Some examples of using the filter are:
        #
        #       * `state="JOB_STATE_SUCCEEDED" AND display_name:"my_job_*"`
        #       * `state!="JOB_STATE_FAILED" OR display_name="my_job"`
        #       * `NOT display_name="my_job"`
        #       * `create_time>"2021-05-18T00:00:00Z"`
        #       * `labels.keyA=valueA`
        #       * `labels.keyB:*`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListBatchPredictionJobsResponse#next_page_token ListBatchPredictionJobsResponse.next_page_token} of the previous
        #     {::Google::Cloud::AIPlatform::V1::JobService::Client#list_batch_prediction_jobs JobService.ListBatchPredictionJobs} call.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class ListBatchPredictionJobsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::JobService::Client#list_batch_prediction_jobs JobService.ListBatchPredictionJobs}
        # @!attribute [rw] batch_prediction_jobs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::BatchPredictionJob>]
        #     List of BatchPredictionJobs in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results.
        #     Pass to {::Google::Cloud::AIPlatform::V1::ListBatchPredictionJobsRequest#page_token ListBatchPredictionJobsRequest.page_token} to obtain that
        #     page.
        class ListBatchPredictionJobsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#delete_batch_prediction_job JobService.DeleteBatchPredictionJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the BatchPredictionJob resource to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/batchPredictionJobs/{batch_prediction_job}`
        class DeleteBatchPredictionJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::JobService::Client#cancel_batch_prediction_job JobService.CancelBatchPredictionJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the BatchPredictionJob to cancel.
        #     Format:
        #     `projects/{project}/locations/{location}/batchPredictionJobs/{batch_prediction_job}`
        class CancelBatchPredictionJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::JobService::Client#create_model_deployment_monitoring_job JobService.CreateModelDeploymentMonitoringJob}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent of the ModelDeploymentMonitoringJob.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] model_deployment_monitoring_job
        #   @return [::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringJob]
        #     Required. The ModelDeploymentMonitoringJob to create
        class CreateModelDeploymentMonitoringJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::JobService::Client#search_model_deployment_monitoring_stats_anomalies JobService.SearchModelDeploymentMonitoringStatsAnomalies}.
        # @!attribute [rw] model_deployment_monitoring_job
        #   @return [::String]
        #     Required. ModelDeploymentMonitoring Job resource name.
        #     Format:
        #     `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
        # @!attribute [rw] deployed_model_id
        #   @return [::String]
        #     Required. The DeployedModel ID of the
        #     [ModelDeploymentMonitoringObjectiveConfig.deployed_model_id].
        # @!attribute [rw] feature_display_name
        #   @return [::String]
        #     The feature display name. If specified, only return the stats belonging to
        #     this feature. Format:
        #     {::Google::Cloud::AIPlatform::V1::ModelMonitoringStatsAnomalies::FeatureHistoricStatsAnomalies#feature_display_name ModelMonitoringStatsAnomalies.FeatureHistoricStatsAnomalies.feature_display_name},
        #     example: "user_destination".
        # @!attribute [rw] objectives
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::SearchModelDeploymentMonitoringStatsAnomaliesRequest::StatsAnomaliesObjective>]
        #     Required. Objectives of the stats to retrieve.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token received from a previous
        #     {::Google::Cloud::AIPlatform::V1::JobService::Client#search_model_deployment_monitoring_stats_anomalies JobService.SearchModelDeploymentMonitoringStatsAnomalies}
        #     call.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The earliest timestamp of stats being generated.
        #     If not set, indicates fetching stats till the earliest possible one.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The latest timestamp of stats being generated.
        #     If not set, indicates feching stats till the latest possible one.
        class SearchModelDeploymentMonitoringStatsAnomaliesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Stats requested for specific objective.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringObjectiveType]
          # @!attribute [rw] top_feature_count
          #   @return [::Integer]
          #     If set, all attribution scores between
          #     {::Google::Cloud::AIPlatform::V1::SearchModelDeploymentMonitoringStatsAnomaliesRequest#start_time SearchModelDeploymentMonitoringStatsAnomaliesRequest.start_time} and
          #     {::Google::Cloud::AIPlatform::V1::SearchModelDeploymentMonitoringStatsAnomaliesRequest#end_time SearchModelDeploymentMonitoringStatsAnomaliesRequest.end_time} are
          #     fetched, and page token doesn't take effect in this case.
          #     Only used to retrieve attribution score for the top Features which has
          #     the highest attribution score in the latest monitoring run.
          class StatsAnomaliesObjective
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::JobService::Client#search_model_deployment_monitoring_stats_anomalies JobService.SearchModelDeploymentMonitoringStatsAnomalies}.
        # @!attribute [rw] monitoring_stats
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::ModelMonitoringStatsAnomalies>]
        #     Stats retrieved for requested objectives.
        #     There are at most 1000
        #     {::Google::Cloud::AIPlatform::V1::ModelMonitoringStatsAnomalies::FeatureHistoricStatsAnomalies#prediction_stats ModelMonitoringStatsAnomalies.FeatureHistoricStatsAnomalies.prediction_stats}
        #     in the response.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The page token that can be used by the next
        #     {::Google::Cloud::AIPlatform::V1::JobService::Client#search_model_deployment_monitoring_stats_anomalies JobService.SearchModelDeploymentMonitoringStatsAnomalies}
        #     call.
        class SearchModelDeploymentMonitoringStatsAnomaliesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::JobService::Client#get_model_deployment_monitoring_job JobService.GetModelDeploymentMonitoringJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the ModelDeploymentMonitoringJob.
        #     Format:
        #     `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
        class GetModelDeploymentMonitoringJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::JobService::Client#list_model_deployment_monitoring_jobs JobService.ListModelDeploymentMonitoringJobs}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent of the ModelDeploymentMonitoringJob.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     The standard list filter.
        #
        #     Supported fields:
        #
        #       * `display_name` supports `=`, `!=` comparisons, and `:` wildcard.
        #       * `state` supports `=`, `!=` comparisons.
        #       * `create_time` supports `=`, `!=`,`<`, `<=`,`>`, `>=` comparisons.
        #         `create_time` must be in RFC 3339 format.
        #       * `labels` supports general map functions that is:
        #         `labels.key=value` - key:value equality
        #         `labels.key:* - key existence
        #
        #     Some examples of using the filter are:
        #
        #       * `state="JOB_STATE_SUCCEEDED" AND display_name:"my_job_*"`
        #       * `state!="JOB_STATE_FAILED" OR display_name="my_job"`
        #       * `NOT display_name="my_job"`
        #       * `create_time>"2021-05-18T00:00:00Z"`
        #       * `labels.keyA=valueA`
        #       * `labels.keyB:*`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read
        class ListModelDeploymentMonitoringJobsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::JobService::Client#list_model_deployment_monitoring_jobs JobService.ListModelDeploymentMonitoringJobs}.
        # @!attribute [rw] model_deployment_monitoring_jobs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringJob>]
        #     A list of ModelDeploymentMonitoringJobs that matches the specified filter
        #     in the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The standard List next-page token.
        class ListModelDeploymentMonitoringJobsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::JobService::Client#update_model_deployment_monitoring_job JobService.UpdateModelDeploymentMonitoringJob}.
        # @!attribute [rw] model_deployment_monitoring_job
        #   @return [::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringJob]
        #     Required. The model monitoring configuration which replaces the resource on the
        #     server.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The update mask is used to specify the fields to be overwritten in the
        #     ModelDeploymentMonitoringJob resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. If the
        #     user does not provide a mask then only the non-empty fields present in the
        #     request will be overwritten. Set the update_mask to `*` to override all
        #     fields.
        #     For the objective config, the user can either provide the update mask for
        #     model_deployment_monitoring_objective_configs or any combination of its
        #     nested fields, such as:
        #     model_deployment_monitoring_objective_configs.objective_config.training_dataset.
        #
        #     Updatable fields:
        #
        #       * `display_name`
        #       * `model_deployment_monitoring_schedule_config`
        #       * `model_monitoring_alert_config`
        #       * `logging_sampling_strategy`
        #       * `labels`
        #       * `log_ttl`
        #       * `enable_monitoring_pipeline_logs`
        #     .  and
        #       * `model_deployment_monitoring_objective_configs`
        #     .  or
        #       * `model_deployment_monitoring_objective_configs.objective_config.training_dataset`
        #       * `model_deployment_monitoring_objective_configs.objective_config.training_prediction_skew_detection_config`
        #       * `model_deployment_monitoring_objective_configs.objective_config.prediction_drift_detection_config`
        class UpdateModelDeploymentMonitoringJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::JobService::Client#delete_model_deployment_monitoring_job JobService.DeleteModelDeploymentMonitoringJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the model monitoring job to delete.
        #     Format:
        #     `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
        class DeleteModelDeploymentMonitoringJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::JobService::Client#pause_model_deployment_monitoring_job JobService.PauseModelDeploymentMonitoringJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the ModelDeploymentMonitoringJob to pause.
        #     Format:
        #     `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
        class PauseModelDeploymentMonitoringJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::JobService::Client#resume_model_deployment_monitoring_job JobService.ResumeModelDeploymentMonitoringJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the ModelDeploymentMonitoringJob to resume.
        #     Format:
        #     `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
        class ResumeModelDeploymentMonitoringJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::JobService::Client#update_model_deployment_monitoring_job JobService.UpdateModelDeploymentMonitoringJob}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        class UpdateModelDeploymentMonitoringJobOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
